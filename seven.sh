# cerner_2^5_2020
# Lonely Interger : There are  integers in an array . All but one integer occur in pairs. Your task is to find the number that occurs only once.
# Sample Input:
# 5
# 0 0 1 2 1
# Sample Output:
# 2

#!/bin/bash
read
arr=($(cat))
arr=${arr[*]}
echo $((${arr// /^}))
