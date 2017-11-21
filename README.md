# Ruby exercises

## 01-Caesar Cypher
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

    > caesar_cipher("What a string!", 5)
    => "Bmfy f xywnsl!"

## 02-Stock Picker

Implement a method `#stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

	  > stock_picker([17,3,6,9,15,8,6,1,10])
	  => [1,4]  # for a profit of $15 - $3 == $12

## 03-Substrings

Implement a method `#substrings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

	  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	  > substrings("below", dictionary)
	  => { "below" => 1, "low" => 1 }

Next, make sure your method can handle multiple words:

	  > substrings("Howdy partner, sit down! How's it going?", dictionary)
	  => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }

## 04-Bubble Sort

* Build a method `#bubble_sort` that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

		> bubble_sort([4,3,78,2,0,2])
		=> [0,2,2,3,4,78]

* Now create a similar method called `#bubble_sort_by` which sorts an array but accepts a block. The block should take two arguments which represent the two elements currently being compared. Expect that the block’s return will be similar to the spaceship operator you learned about before – if the result of the block is negative, the element on the left is “smaller” than the element on the right. 0 means they are equal. A positive result means the left element is greater. Use this to sort your array.

		> bubble_sort_by(["hi","hello","hey"]) do |left,right|
		>   left.length - right.length
		> end
		=> ["hi", "hey", "hello"]

## 05-Enumerable Methods

You learned about the Enumerable module that gets mixed into the Array and Hash classes (among others) and provides you with lots of handy iterator methods. To prove that there’s no magic to it, you’re going to rebuild those methods.

1. Create a script file to house your methods and run it in IRB to test them later.
2. Add your new methods onto the existing Enumerable module. Ruby makes this easy for you because any class or module can be added to without trouble … just do something like: ~~~`ruby module Enumerable def my_each # your code here end end` ~~~
3. Create `#my_each`, a method that is identical to `#each` but (obviously) does not use `#each`. You’ll need to remember the yield statement. Make sure it returns the same thing as `#each` as well.
4. Create `#my_each_with_index` in the same way.
5. Create `#my_select` in the same way, though you may use `#my_each` in your definition (but not `#each`).
6. Create `#my_all?` (continue as above)
7. Create `#my_any?``
8. Create `#my_none?`
9. Create `#my_count`
10. Create `#my_map`
11. Create `#my_inject`
12. Test your `#my_inject` by creating a method called `#multiply_els` which multiplies all the elements of the array together by using `#my_inject`, e.g. `multiply_els([2,4,5]) #=> 40`
13. Modify your `#my_map` method to take a proc instead.
14. Modify your `#my_map` method to take either a proc or a block. It won’t be necessary to apply both a proc and a block in the same `#my_map` call since you could get the same effect by chaining together one `#my_map` call with the block and one with the proc. This approach is also clearer, since the user doesn’t have to remember whether the proc or block will be run first. So if both a proc and a block are given, only execute the proc.

