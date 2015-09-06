#!/usr/bin/env python
# vim:sts=2:sw=2

from argparse import ArgumentParser
import requests

parser = ArgumentParser()
parser.add_argument('--list', help="Returns a JSON dictionary of all the groups to be managed.", action="store_true")
parser.add_argument('--host', nargs='?', help="Returns an empty JSON dictionary.")
args = parser.parse_args()

if args.list:
  r = requests.get("http://localhost:3000/ansible_inventory")
  if r.status_code != 200:
    sys.exit(1)
  
  print r.text

if args.host:
  print "{}"
