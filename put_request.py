import requests

def diya_put(url,headers=None,json=None):
    payload = {
        "title": "Geeta",
        "author": "XYZ"
        }
    response = requests.put(url,headers = {'Content-Type': 'application/json'},json=payload)
    return response