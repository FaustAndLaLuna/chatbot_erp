import sqlite3, os, re, json
from flask import Flask, request, current_app
from dotenv import load_dotenv
from completion_utils import get_ChatGPT_response

app = Flask(__name__)

pattern = r"```(.*?)```"

load_dotenv()
openai_secret = os.environ['openai_secret']
openai_org = os.environ['openai_org']

db_file = 'my_database.sqlite3'
subfolder = 'data_tables_sqlite'
conn = sqlite3.connect(db_file)

for filename in os.listdir(subfolder):
	if filename.endswith('.sql'):
		with open(os.path.join(subfolder, filename), 'r') as file:
			query = file.read()
		conn.executescript(query)
conn.commit()
conn.close()
print("SQLite3 Database Loaded.")

@app.route('/')
def index():
    return current_app.send_static_file('index.html')

@app.route('/chatStrateGPT', methods=['POST'])
def respond():
	conn = sqlite3.connect(db_file)
	if request.method == 'POST':
		data = request.json
		response = {'answer': get_ChatGPT_response(data['question'], data['history'])}
		if '```' in response['answer']:
			cur = conn.cursor()
			matches = re.findall(pattern, response['answer'], re.DOTALL)
			for match in matches:
				query = match.replace('sql', '').strip()
				if 'insert' in query.lower() or 'update' in query.lower():
					cur.execute(query)
					print(f"SQL Ejecutado! {query}")
					conn.commit()
				else:
					sql_res = cur.execute(query)
					response['data'] = [sql_res.fetchall()]
	conn.close()
	return json.dumps(response)






if __name__ == '__main__':
		# query = input('¿Qué quieres saber de la base de datos? ')
		# response = get_ChatGPT_response(query, model='gpt-3.5-turbo')
		# if '```' in response:
		# 	cur = conn.cursor()
		# 	matches = re.findall(pattern, response, re.DOTALL)
		# 	for match in matches:
		# 		query = match.replace('sql', '').strip()
		# 		if 'insert' in query.lower() or 'update' in query.lower():
		# 			cur.execute(query)
		# 			print(f"SQL Ejecutado! {query}")
		# 			conn.commit()
		# 		else:
		# 			response = cur.execute(query)
		# 			print(response.fetchall())
	app.run(host='0.0.0.0', port=80)