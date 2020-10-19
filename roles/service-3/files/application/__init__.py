from flask import Flask, jsonify
from random import randint

app = Flask(__name__)

@app.route('/')
def index():
    numbers = {
        0:randint(0,10),
        1:randint(0,10),
        2:randint(0,10),
        3:randint(0,10),
        4:randint(0,10),
    }
    return jsonify(numbers)