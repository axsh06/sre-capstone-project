from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "SRE Capstone Project - V2 is running!"

@app.route('/health')
def health_check():
    # Эту конечную точку потом будет дергать Kubernetes или автоскейлер
    return {"status": "UP"}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
