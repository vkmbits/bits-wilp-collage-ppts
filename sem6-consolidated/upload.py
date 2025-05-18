
from internetarchive import get_item
from internetarchive import upload
import os

access_key = os.environ.get("ACCESS_KEY")
secret_key = os.environ.get("SECRET_KEY")

md = {'collection': 'bits-wilp-ppts-consolidated', 'title': 'Bits pilani wilp ppts consolidated', 'mediatype': 'texts'}
r = upload('bits-wilp-sem6-ppts-consolidated', files=['./bits-wilp-sem6-all-ppts-consolidated.pdf'], metadata=md, access_key=access_key, secret_key=secret_key)
print(r[0].status_code)
