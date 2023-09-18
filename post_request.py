import requests


def diya_post(url,headers=None,json=None):
    payload = {
        "title":"ABC",
        "author":"DIYA"
    }
    headers = {
        'Content-Type': 'application/json'
        }
    response = requests.post(url,headers = headers,json=payload)
    return response
