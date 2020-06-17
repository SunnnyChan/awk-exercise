#!/usr/bin/env bash

# author : sunnychan@gmail.com

# 二维数组 
awk '{
        for(i = 1; i <= NF; i++) {
            arr[NR, i] = $i;
        }
    }END {
        print "索引遍历 - 原数组："
        for (i = 1; i <= FNR; i++) {
            for (j = 1; j <= NF; j++) {
                printf "%s", arr[i, j];
                if (j != FNR) {
                    printf " ";
                }
            }
            printf "\n";
        }
        print "\n索引遍历 - 反转行列："
        for (i = 1; i <= NF; i++) {
            for (j = 1; j <= FNR; j++) {
                printf "%s", arr[j, i];
                if (j != FNR) {
                    printf " ";
                }
            }
            printf "\n";
        }

        print "\nin 遍历："

        for (comb in arr) {
            split(comb, sep, SUBSEP);
            print sep[1], sep[2], arr[sep[1], sep[2]];
        }
    }' data/array.txt