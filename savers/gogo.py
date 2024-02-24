from flask import Flask, render_template, jsonify

app = Flask(__name__)

@app.get("/")
def index():
    print("GOGOGO")
    return jsonify({"status":"OK", "title":"GOGOGO"})

if __name__ == "__main__":
    app.run(host = "0.0.0.0", debug=True)