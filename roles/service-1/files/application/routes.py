from application import app
import requests
from flask import url_for, render_template, request



def username():
    numbers = requests.get('http://service3:5002').json()
    letters = requests.get('http://service2:5001').json()
    username = ""
    for i in range(9):
        if i % 2 == 0:
            username += str(letters[str(i//2)])
        else:
            username += str(numbers[str(i//2)])
    return username


@app.route('/', methods=['GET', 'POST'])
def index():
    username1 = username()
    return render_template('index1.html', username=username1)



@app.route('/prize/<username>', methods=['GET', 'POST'])
def prize(username):
    prize = requests.get('http://service4:5003/'+str(username))
    return render_template('index1.html', username=username, prize=prize.json()['prize'])