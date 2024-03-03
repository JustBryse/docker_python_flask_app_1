from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h2>Hello. This is running from a docker container. This is a custom image.</h2>'