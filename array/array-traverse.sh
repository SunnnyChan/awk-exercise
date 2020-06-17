#!/usr/bin/env bash

# author : sunnychan@gmail.com

# 数组遍历
# 索引数组
awk 'BEGIN{count = 1}
    {  
        for(i = 1; i <= NF; i++) {
            arr[count] = $i;
            count++;
        }
    }END {
        len = length(arr)
        print "索引遍历："
        for(i=1; i<=len; i++) {
            print i, arr[i];
        }
        print "\nin 遍历："
        for(i in arr) {
            print i, arr[i];
        }
    }' data/array.txt

# 关联数组

awk '{  
        arr[$1] = $2
    }END {
        for(i in arr) {
            print i, arr[i];
        }
    }' data/array.txt

