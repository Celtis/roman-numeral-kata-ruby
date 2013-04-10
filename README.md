Roman Numeral Kata
==================

Having attempted this Kata before (but using PHP) I thought I'd try out Ruby to see if it's any easier to complete. Due to the past experience, I was already aware of the pitfalls of certain numerals - e.g. 4, 9, 40, etc.

I've created a solution in Ruby along with corresponding RSpec tests which, as is usual with TDD, I wrote the tests first and then wrote the minimum needed to pass the tests, before refactoring to the final version seen here. The tests were originally created to check each number individually before I realised that that approach would quickly become inefficient and so altered the test to run against a provided array of numeric values and their expected output.

The solution is quite simple, an array of numerals is created which includes all of the variants (I, V, X, L, C, D & M) as well as the numerals for those numbers that cause a problem (such as IV, IX, XL, XC, CD & CM). The code then takes the array of numerals and loops through those to see if the number provided is higher than the current numeral. If it is then it adds the numeral to a return string and subtracts the numeric value from the input string. The loop of the array ensures that the input number is completely processed.

I realise that the array looping may not be the most performance efficient solution and I had created an alternative which was a function to find the closest match in an array and then build on that but, due to the time constraint of half an hour I didn't have enough time to implement both solutions and measure their performance.

As requested in the caveats, the solution will handle values between 1 and 3999 inclusive. As you can see in the tests, there is an is_valid function to check if a value is passed in that isn't valid, such as 4000 or zero.