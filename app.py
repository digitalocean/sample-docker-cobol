from flask import Flask
from flask import render_template
import subprocess

app = Flask(__name__)


@app.route("/")
def hello_world():
        return subprocess.check_output("./HelloWorld")

@app.route("/hal")
def sorry_dave():
        return subprocess.check_output("./Sorry")
