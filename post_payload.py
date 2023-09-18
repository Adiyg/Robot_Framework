import requests

def post_data(url, headers=None, json=None):
    payload = json

    response = requests.post(url,headers = {'Content-Type': 'application/json'}, json=payload)
    return response