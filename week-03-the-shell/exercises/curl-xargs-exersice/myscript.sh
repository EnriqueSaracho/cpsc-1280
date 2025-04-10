#!/bin/bash

# takes a files with wetbsite urls, retrieves the content from them and outputs to
# another file and the terminal

input="websites.txt"
output="webCrawlerResult.txt"

cat "$input" | xargs curl --get | tee "$output"
