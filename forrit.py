from bottle import route, run, template, static_file, error
import requests, os

response = requests.get('http://apis.is/concerts')

data = response.json()

@route('/')
def index():
    return template('index', data=data)

@route("/static/<filename>")
def server_static(filename):
    return static_file(filename, root='./css')

@error(404)
def error404(error):
    return "<h1>Þessi síða fannst ekki</h1>"

run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))