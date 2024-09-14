#!/bin/bash

# 要替换的字符串和新字符串

search_regex1="\(https://github.com/vpn-wiki/([^/]+)/(blob\|tree)/master(.+)\.md\)"
search_regex2="\(https://github.com/vpn-wiki/([^/]+)/(blob\|tree)/master(.+)\)"
replace_string="(/\1\3)"

# 遍历当前目录及其子目录下所有的 .md 文件
find . -type f -name "*.md" | while read -r file; do
  # 使用 sed 替换文件中的指定字符串
  sed -E -i "s|$search_regex1|$replace_string|g" "$file"
  sed -E -i "s|$search_regex2|$replace_string|g" "$file"
#   sed -i "s#$search_string2#$replace_string#g" "$file"
#   echo "Updated: $file"
done