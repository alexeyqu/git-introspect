git log --pretty=format:"%h %at" --author=alexeyqu  --numstat 
    | gawk '{gsub(/(-|\w|\/)+(-|\.|\w)+\./,"")}1' 
    | awk '{added[$3] += $1; deleted[$3] += $2; } END{for (i in added) print added[i], deleted[i], i}'
