#!/bin/bash

path="$1"
max_length="$2"

path="${path/#$HOME/~}"

if [ ${#path} -le $max_length ]; then
  echo "$path"
  exit 0
fi

IFS='/' read -ra parts <<< "$path"

first="${parts[0]}"
last="${parts[${#parts[@]}-1]}"
middle=()

for ((i=1; i<${#parts[@]}-1; i++)); do
  if [ -n "${parts[$i]}" ]; then
    middle+=("${parts[$i]:0:1}")
  fi
done

middle_path=$(IFS=/; echo "${middle[*]}")

if [ -n "$middle_path" ]; then
  if [ "$first" = "~" ] || [ "$first" = "/" ]; then
    echo "${first}/${middle_path}/${last}"
  else
    echo "${first}/${middle_path}/${last}"
  fi
else
  if [ "$first" = "~" ] || [ "$first" = "/" ]; then
    echo "${first}/${last}"
  else
    echo "${first}/${last}"
  fi
fi
