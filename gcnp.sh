#!/bin/bash
# takes a commit msh as argument and pushes to repo
git add .cir* *
git commit -m "$1"
git push
