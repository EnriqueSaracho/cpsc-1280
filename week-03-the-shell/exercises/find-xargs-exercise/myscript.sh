#!/bin/bash

find . -name "b*" -type f | sort -r | xargs cat
