import requests
import json
from packaging.version import parse



pypi_url_json = "https://pypi.python.org/pypi/SQLAlchemy/json"

r = requests.get(pypi_url_json)
pypi_data = json.loads(r.content)

releases = dict(
    (parse(vers), pypi_data['releases'][vers])
    for vers in pypi_data['releases']
)

latest_release = max(vers for vers in releases)

print(f"THE LATEST RELEASE IS !!!! {latest_release}")


