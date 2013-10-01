#!/bin/bash


USERNAME=$1
PASSWORD=$2

REPO_LIST=$3
TEAM_ID=$4

for repo_id in `cat $REPO_LIST`; do
    curl -i -u $USERNAME:$PASSWORD -X PUT -d "" https://api.github.com/teams/$TEAM_ID/repos/$repo_id
done
