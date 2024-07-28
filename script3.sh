#!/bin/bash
keyword="ключевое_слово"
current_directory=$(pwd)
grep -rl "$keyword" "$current_directory"
