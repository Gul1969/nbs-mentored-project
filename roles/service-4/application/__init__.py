from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/<username>')
def index(username):
    if username[0] == 'a':
        prize = "£100"
    else:
        prize = "Nothing"
    prizes = {
        "prize":prize
    } 
    return jsonify(prizes)