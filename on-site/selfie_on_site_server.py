from flask import Flask
from flask import request

import base64
from PIL import Image, ImageOps
from io import BytesIO

import socket

def convert_and_save(b64_string):
    imgdata = base64.b64decode(b64_string)
    # im = ImageOps.grayscale(Image.open(BytesIO(imgdata)))
    im = Image.open(BytesIO(imgdata))
    im.save('image.png', 'PNG')


app = Flask(__name__, static_url_path='/static')

@app.route("/hello")
def hello_world():
    return "<p>Hello, World!</p><p>I'm " + socket.gethostname() + "!</p>"

@app.route('/upload', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        json_data = request.get_json()
        convert_and_save(json_data['selfie'])
        return "Was post"
    else:
        return "Not post"
