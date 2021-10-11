from flask import Flask
import socket

app = Flask(__name__, static_url_path='/static')

@app.route("/hello")
def hello_world():
    return "<p>Hello, World!</p><p>I'm " + socket.gethostname() + "!</p>"
