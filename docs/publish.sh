#!/bin/zsh
if [ -z "$1" ]
then
  msg='Small fix. Updated pages.'
else
  msg=$1
fi
echo 'Updating/Adding all...'
git -C /Users/edward/Documents/articles/_sites add .
echo "Committing: $msg"
git -C /Users/edward/Documents/articles/_sites commit -m "$msg"
echo 'Publishing...'
git -C /Users/edward/Documents/articles/_sites push origin master
