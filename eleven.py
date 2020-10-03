# cerner_2^5_2020
# You are given a function f(X)= X^2. You are also given K lists. The i^th list consists of N_i elements.
# You have to pick one element from each list so that the value from the equation below is maximized:

# S = (f(X_1)+f(X_2)+f(X_3)+ . . . +f(X_k)) % M

# X_i denotes the element picked from the i^th list . Find the maximized value S_max obtained.

# % denotes the modulo operator.

# Note that you need to take exactly one element from each list, not necessarily the largest element. 
# You add the squares of the chosen elements and perform the modulo operation. 
# The maximum value that you can obtain, will be the answer to the problem.

K, M = [int(x) for x in input().split()]
arrayN = []
for _i_ in range(K):
    arrayN.append([int(x) for x in input().split()][1:])
    
from itertools import product
possible_combination = list(product(*arrayN))

def func(nums):
    return sum(x*x for x in nums) % M

print(max(list(map(func, possible_combination))))
