# 🐍 Python Projects
Welcome to my collection of Python scripts. These projects show practical use of control flow, data structures, and logic in Python.


---

## Table of Contents

1. [Book Purchase and Tax Calculation](#book-purchase-and-tax-calculation)
2. [Vowel Counter and Filter](#vowel-counter-and-filter)
3. [Set Operations: Union, Intersection, and Symmetric Difference](#set-operations-union-intersection-and-symmetric-difference)

---
### 1. **Book Purchase and Tax Calculation**

**Description**
This program simulates a book and magazine purchase transaction. It will ask the user to input the quantity of paperback books, hardback books, and magazines that the user will want to buy. It will calculate the cost before tax, sales tax, and the total after tax. Input validation is also used to ensure that the quantities entered are within the specific ranges.

**Skills Demonstrated:**
- User input validation
- Arithmatic operations
- Conditional statements
- Formatted output

**Code:**
```python
paper = int(input("How many paperback books would you like to buy?"))
while 0 > paper or paper > 50:
    print('Number of paperback books must be between 0 and 50.')
    paper = int(input("How many paperback books would you like to buy?"))
hard = int(input("How many hardback books would you like to buy?"))
while 0 > hard or hard > 20:
    print('Number of hardback books must be between 0 and 20.')
    hard = int(input("How many hardback books would you like to buy?"))
mag = int(input("How many magazines would you like to buy?"))
while 0 > mag or mag > 35:
    print('Number of magazines must be between 0 and 35.')
    mag = int(input("How many magazines would you like to buy?"))

paperPrice = 2.50 * paper
hardPrice = 7.00 * hard
magPrice = 3.95 * mag
total = paperPrice + hardPrice + magPrice
salesTax = total * 0.07
compTotal = salesTax + total
# outputs
print('The amount of paperback books you have purchased are:', paper)
print('The amount of hardcover books you have purchased are:', hard)
print('The amount of magazines you have purchased are:', mag)
print('Cost before tax ', "${:,.2f}".format(total))
print('The sales tax is:', "${:,.2f}".format(salesTax))
print('Cost after tax:', "${:,.2f}".format(compTotal))
```
---
### 2. **Vowel Counter and Filter**

**Description**
This program counts the vowels in a string and filters out words that contain a specified number of vowels.

**Skills Demonstrated:**
- String manipulation
- Looping through text
- Dictionary creation

**Code:**
```python
def vowelCount(s):
    num_vowels = 0
    for char in s:
        if char in "aeiouAEIOU":
            num_vowels = num_vowels + 1
    return num_vowels


def manyVowels(text, i):
    words_with_many_vowels = dict()
    text_array = text.split()
    for word in text_array:
        if vowelCount(word) >= i:
            words_with_many_vowels[word] = vowelCount(word)
    return words_with_many_vowels


print(vowelCount('Amendment'))

print(manyVowels(text, 3))
```
---
### 3. **Set Operations: Union, Intersection, and Symmetric Difference**

**Description**
This program demonstrates basic set operations in Python, including union, intersection, and symmetric difference. It also filters the results by checking divisibility by 3.

**Skills Demonstrated:**
- Set operations
- Random number generation
- Mathematical operations with sets

**Code**
```python
import random

set1 = set()
set2 = set()
num_total = 0
num1 = 6
for i in range(num1):
    num_total += 1
    nums = (random.randint(1, 20))
    set1.add(nums)
for i in range(num1):
    num_total += 1
    nums = (random.randint(1, 20))
    set2.add(nums)
print("set1: ", set1)
print("set2: ", set2)
union = set1 | set2
print("union of set1 and set2 :", union)
numbers = {x for x in range(20) if x % 3 == 0}
div_three = union.intersection(numbers)
print("Divisible by 3 in union of set1 and set2: ", div_three)
set_int = set1.intersection(set2)
print("Intersection of set1 and set2: ", set_int)
set_diff = set1.symmetric_difference(set2)
print("Symmetric difference of set1 and set2: ", set_diff)
```
---