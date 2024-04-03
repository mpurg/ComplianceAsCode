#!/bin/bash

while IFS=, read -r new old; do
    
    echo "$old $new"
    if [[ $(echo "$new" | wc -c) -gt 15 ]]; then
        # dup
        continue
    fi

    if [[ ! -z "$old" ]]; then
        sed -i "s/\(.*$old\)\(.*\)/\1\2\n    # $new\2/g" stig.profile
        for f in $(git grep "stig.*$old" ../../../linux_os | awk -F: '{print $1}'); do
            echo "$f"
            sed -i "/$old/a \    stigid@ubuntu2204: $new" "$f"
        done
    else
        echo "$new" >> stig.profile
    fi
done < rules.csv
  
