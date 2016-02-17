#!/usr/bin/env python
# vim:sts=2:sw=2

from argparse import ArgumentParser
from os import popen
import requests

parser=ArgumentParser()
parser.add_argument('--list', help="Returns a JSON dictionary of all the groups to be managed.", action="store_true")
parser.add_argument('--host', nargs='?', help="Returns an empty JSON dictionary.")
args=parser.parse_args()

# Simplifying, since we haven't already installed domain.yml, we assume to use
# default gateway IP.
gwt=popen("ip route show | grep ^default | awk '{ print $3 }'")
srv=gwt.read().strip()
gwt.close()

if args.list:
  r = requests.get("http://" + srv + ":3000/ansible_list")
  if r.status_code != 200:
    sys.exit(1)
  
  print r.text

if args.host:
  r = requests.get("http://" + srv + ":3000/ansible_host")
  if r.status_code != 200:
    sys.exit(1)
  
  print r.text
