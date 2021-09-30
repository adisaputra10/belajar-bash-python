#!/bin/bash

<<<<<<< HEAD
#input branch yang akan di push
read -p "branch name : " branch


git config --local user.email "" #isi dengan email 
git config --local user.name "" #isi dengan username
=======
read -p "branch name : " branch


git config --local user.email "yusuf.luai01@gmail.com"
git config --local user.name "Yusuf Luai"
>>>>>>> 60ee229... menambah automisasi push git

echo "[+] Enter your commit message:"
read message
git add .
git commit -m "${message}"
if [ -n "$(git status --porcelain)" ]
then

  echo "[+] Git Status: Clean"
else
  git status
  echo "[+] Pushing data to github..."
  git push -u origin $branch
  sleep 3
  echo "[+] Push done."
fi
