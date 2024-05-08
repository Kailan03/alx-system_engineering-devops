#!/usr/bin/python3
"""
returns a list containing the titles of all hot articles
for a given subreddit.
"""
import requests


def recurse(subreddit, hot_list=[], after=None):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': 'Mozilla/5.0'}
    params = {'limit': 100, 'after': after}

    response = requests.get(url,
                            headers=headers,
                            params=params,
                            allow_redirects=False)
    if response.status_code != 200:
        return None

    data = response.json()
    if 'data' not in data or 'children' not in data['data']:
        return None

    children = data['data']['children']
    if not children:
        return hot_list

    for child in children:
        hot_list.append(child['data']['title'])

    after = data['data']['after']
    if after:
        return recurse(subreddit, hot_list, after)
    else:
        return hot_list
