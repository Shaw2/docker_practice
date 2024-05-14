from flask import Flask, render_template

app = Flask(__name__)

# app.route()와 app.get()이 지금으로썬 차이 없는듯
@app.route('/')
def mainDef():

    return "Hello python in Docker"

@app.get('/board')
def board():
    
    return "그냥 보드"

@app.get('/html')
def html_open():
    
    return render_template('index.html')


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5555)

# print("Hello main~")
# print("For volume test!")