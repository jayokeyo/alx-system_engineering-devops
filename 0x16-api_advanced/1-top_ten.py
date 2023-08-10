#!/usr/bin/python3
"""Query reddit api for top ten posts on a given subreddit."""
import requests


def top_ten(subreddit):
    """Print the titles of the top 10 posts on a given subreddit."""
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)
    headers = {
        "User-Agent": "linux:Ubuntu20.04"
    }
    params = {
        "limit": 10
    }
    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)
    if response.status_code == 404:
        print("None")
        return
    results = response.json().get("data")
    [print(c.get("data").get("title")) for c in results.get("children")]
