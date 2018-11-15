from flask import Flask
import datetime

app=Flask(__name__)

@app.route('/')
def ReturnTime():
	return '<h2>Hello World</h2> Current time is' + str(datetime.datetime.now().time() 	)
	
if __name__=="__main__":
	app.run(host='0.0.0.0', debug=True)
print("Started")