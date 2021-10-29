from flask import Flask
from flask import request
import os

from PIL import ImageGrab

from datetime import datetime
from hashlib import md5

def upload_file(file_name):
    import subprocess
    try:
        scp = subprocess.Popen(['scp', file_name, 'dh_ep9wdy@selfie-v2.fransimo.info:/home/dh_ep9wdy/selfie-v2.fransimo.info/public/snap_shots/'])
        sts = os.waitpid(scp.pid, 0)
        return True
    except CalledProcessError:
        print('ERROR: Connection to host failed!')
        return False

def take_snap_shot():
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(now)
    m = md5(now.encode())
    file_name = 'snap_shots/' + m.hexdigest() + '.jpg'
    print(file_name)
    img = ImageGrab.grab().convert('RGB')
    img.save(file_name)
    return file_name

def take_snap_shot_and_upload():
    file_name = take_snap_shot()
    if upload_file(file_name):
        r = 'https://www.selfie-v2.fransimo.info/'+file_name
    else:
        r = "not online, sorry!"
    return r

app = Flask(__name__, static_url_path='/static')

@app.route("/hello")
def hello_world():
    import socket
    return "<p>Hello, World!</p><p>I'm " + socket.gethostname() + "!</p>"

@app.route('/takeSnapShot', methods=['GET', 'POST'])
def take_snap_shot_uri():
    if request.method == 'POST':
        r = take_snap_shot_and_upload()
        return { "qr": r }
    else:
        return "Not post"
