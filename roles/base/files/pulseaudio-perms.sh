#!/bin/bash

domaingroup="domain users"
localgroups="pulse pulse-access"

baseusers="bglug"
domainusers=$(getent group '${domaingroup}' | awk 'BEGIN { FS = ":" }; { print $4 }' | sed -e 's/,/ /')

users="${baseusers} ${domainusers}"

for group in "${localgroups}"; do
  actualusers=$(getent group '${group}' | awk 'BEGIN { FS = ":" }; { print $4 }' | sed -e 's/,/ /g')

  # Removing users not in the group
  for user in "${actualusers}"; do
    [[ "${users}" =~ "${user}" ]] || gpasswd -d "${user}" "${group}"
  done

  # Adding users to group
  for user in "${users}"; do
    [[ "${actualusers}" =~ "${user}" ]] || gpasswd -a "${user}" "${group}"
  done
done

