from flask import Flask
from flask import request

import base64


import socket

def convert_and_save(b64_string):
    imgdata = base64.b64decode(b64_string)
    # imgdata = b64_string
    with open("selfie.png", "wb") as fh:
        fh.write(imgdata)

app = Flask(__name__, static_url_path='/static')

@app.route("/hello")
def hello_world():
    return "<p>Hello, World!</p><p>I'm " + socket.gethostname() + "!</p>"

@app.route('/upload', methods=['GET', 'POST'])
def upload_file():
    print(request)
    print(request.files)
    if request.method == 'POST':
        json_data = request.get_json()
        convert_and_save(json_data['selfie'])
        return "Was post"
    else:
        return "Not post"
