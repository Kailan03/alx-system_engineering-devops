#!/usr/bin/python3
"""
 parses the title of all hot articles,
 and prints a sorted count of given keywords
 """
import requests


def count_words(subreddit, word_list, after=None, counts=None):
    if counts is None:
        counts = {}

    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': 'Mozilla/5.0'}
    params = {'limit': 100, 'after': after}

    response = requests.get(url,
                            headers=headers,
                            params=params,
                            allow_redirects=False)
    if response.status_code != 200:
        return

    data = response.json()
    if 'data' not in data or 'children' not in data['data']:
        return

    children = data['data']['children']
    if not children:
        return

    for child in children:
        title = child['data']['title'].lower()
        for word in word_list:
            word = word.lower()
            if title.count(word) > 0:
                counts[word] = counts.get(word, 0) + title.count(word)

    after = data['data']['after']
    if after:
        return count_words(subreddit, word_list, after, counts)
    else:
        sorted_counts = sorted(counts.items(), key=lambda x: (-x[1], x[0]))
        for word, count in sorted_counts:
            print(f"{word}: {count}")
