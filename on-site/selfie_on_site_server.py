from flask import Flask
from flask import request
import os
import subprocess

from PIL import ImageGrab

from datetime import datetime
from hashlib import md5

import qrcode

def take_snap_shot():
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(now)
    m = md5(now.encode())
    file_name = 'snap_shots/' + m.hexdigest() + '.jpg'
    print(file_name)
    img = ImageGrab.grab().convert('RGB')
    img.save(file_name)
    return file_name


def upload_file(file_name):
    try:
        scp = subprocess.Popen(['scp', file_name, 'dh_ep9wdy@selfie-v2.fransimo.info:/home/dh_ep9wdy/selfie_v2/public/snap_shots'])
        pid, status = os.waitpid(scp.pid, 0)
        print(status)
        return ( status == 0 )
    except CalledProcessError:
        print('ERROR: Connection to host failed!')
        return False

def generate_qr(file_name):
    url = 'https://www.selfie-v2.fransimo.info/get_selfie.php?id='+file_name
    img = qrcode.make(url)
    qr_uri = 'static/' + file_name + '.png'
    img.save(qr_uri)
    return qr_uri


def take_snap_shot_and_upload():
    file_name = take_snap_shot()
    if upload_file(file_name):
        r = 'http://localhost:5000/' + generate_qr(file_name)
    else:
        r = "not online, sorry!"
    os.remove(file_name)
    return r

app = Flask(__name__, static_url_path='/static')

@app.route('/takeSnapShot', methods=['GET', 'POST'])
def take_snap_shot_uri():
    if request.method == 'POST':
        r = take_snap_shot_and_upload()
        return { "qr": r }
    else:
        return "Not post"

@app.route("/hello")
def hello_world():
    import socket
    return "<p>Hello, World!</p><p>I'm " + socket.gethostname() + "!</p>"

@app.route("/shutdown",methods=['POST'])
def shutdown_uri():
    shutdown = subprocess.Popen(['/home/pi/selfie_v2/shutdown.sh'])
