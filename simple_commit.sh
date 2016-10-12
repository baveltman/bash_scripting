#!/bin/bash
#simple git commit script to master

branch=$1
message=$2

if [[ -z "$branch" ]]
then
    echo "usage simple_commit {branch} '{message}'"
    echo "missing {branch}"
    exit
fi

if [[ -z "$message" ]]
then
    echo "usage simple_commit {branch} '{message}'"
    echo "missing {message}"
    exit
fi

echo "## Adding all changes..."
echo "$(git add .)"
echo ""
echo "## Status:"
echo ""
echo "$(git status)"
echo ""
echo "## Commiting changes with message '$message'"
echo "$(git commit -m '$message')"
echo ""
echo "## Rebasing and pushing"
echo "$(git pull --rebase origin $branch)"
echo "$(git push -u origin $branch)"
echo ""
echo "## final status"
echo ""
echo "$(git status)"
echo ""

exit
