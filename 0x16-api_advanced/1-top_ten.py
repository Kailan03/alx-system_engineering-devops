#!/usr/bin/python3
"""
fisrt 10 hot posts
"""
import requests


def top_ten(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {"User-Agent": "MyBot/1.0"}  # to avoid Too Many Requests error
    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            data = response.json()
            for post in data['data']['children']:
                print(post['data']['title'])
        else:
            print("None")
    except Exception as e:
        print(f"Error: {e}")
        print("None")
