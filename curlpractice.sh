#!/bin/sh

echo "curling your site"
curl https://sherrli.github.io -o curlpractice.log; sed -e 's/<[^>]*>/ /g' curlpractice.log > curlpractice2.log

tr -d '\n' < curlpractice2.log


