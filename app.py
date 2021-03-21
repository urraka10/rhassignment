import subprocess
from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    hostname =  subprocess.check_output('hostname').decode('utf8')
    return "Requester FQDN Hostname: " + hostname
