# String Calculator TDD

## Installation & Setup

```bash
git clone https://github.com/Aman2804/IncubyteAssesment
git checkout IncubyteAssesment
bundle install
```


## To run test cases
```
rspec
```


#### Input : Single number
```ruby 
ruby main.rb "1"
```
Calculating for: 1 <br />
Result: 6


#### Input : Multiple numbers
```ruby 
ruby main.rb "1,2,3"
```
Calculating for: 1,2,3 <br />
Result: 6

#### Input : Newline separated numbers
```ruby 
ruby main.rb "1\n2\n3"
```
Calculating for: 1,2,3 <br />
Result: 6

#### Input : Custom delimiter with string
```ruby 
ruby main.rb "//;\n1;2;3"
```
Calculating for: 1,2,3 <br />
Result: 6

#### Input : Negative Numbers String
```ruby
ruby main.rb "1,-2,-3,4"
```
Calculating for: 1,-2,3,-4 <br />
Error: Negative numbers not allowed: -2, -4
