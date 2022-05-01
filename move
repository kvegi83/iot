/wiki/rest/api/content/33146/move/append/229389

# This code sample uses the 'requests' library:
# http://docs.python-requests.org
import requests
import json

url = "https://your-domain.atlassian.net/wiki/rest/api/content/{pageId}/move/{position}/{targetId}"

headers = {
   "Accept": "application/json",
   "Authorization": "Bearer <access_token>"
}

response = requests.request(
   "PUT",
   url,
   headers=headers
)

print(json.dumps(json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")))
