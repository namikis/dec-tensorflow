from flask import Flask
import json

from flask_cors import CORS
app = Flask(__name__)
CORS(app)

@app.route("/")
def index():
    test = "testaaaa"
    return test

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=True)
