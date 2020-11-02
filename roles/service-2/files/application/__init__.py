from flask import Flask, jsonify
from random import randint

app = Flask(__name__)

@app.route('/')
def index():
    alph = "abcdefghijklmnopqrstuvwxyz"
    letters = {
        0:alph[randint(0,4)],
        1:alph[randint(0,25)],
        2:alph[randint(0,25)],
        3:alph[randint(0,25)],
        4:alph[randint(0,25)],
    }
    return jsonify(letters)