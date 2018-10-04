# Basic Calculator
Writing up the exercise from TDD exercise on day 3 of week 1 of Makers Apprenticeship

### User story
```
As a mathematician
so i can add numbers
I want to add two numbers on my calculator
```

### Breaking it down

Take user story and split into objects and functions

A useful method - nouns and verbs

e.g.
**Nouns (object/class)**
* user - mathematician
* calculator
* numbers

**Verbs (method)**
* add

### Feature test

Start with feature test - what does the user want?

This tells us when our work is done.  Will guide you through process

IRB for now to test feature tests - makes it an easy distinction (IRB for feature tests, rspec for unit tests)

Let's try to interact with the calculator (we know it's not really there, but let's try it as a feature test)

```
irb> calculator = Calculator.new
```

Error returned in the stack trace:
```
.....
NameError (uninitialized constant Calculator)
```

Ironically, this is a good message

### Unit tests

Create a unit test to **reproduce IRB error**.  They need to fail for the **same** reason as the IRB/feature test failure

Ensure that you have initialized rspec

```
rspec --init
```

create your spec file in the spec folder
```
touch ./spec/calculator_spec.rb
```

and write your first test

```
describe Calculator do
end
```

then run with
```
rspec
```

or `rspec ./<filepath>/<filename>`

**_Yes_** - the error is the same

```
...
NameError:
  uninitialized constant Calculator
...
  ```

Failing Feature test **AND** failing user test => go and fix it

### Fixing the failed tests

Create the calculator.rb file

```
touch ./lib/calculator.rb
 ```

 _At this point you can also go back and add `require 'calculator'` into the rspec to link the code and test_

 In the calculator file create the Class

 ```
 class Calculator
 end
 ```

 Run the spec - **it's GREEN**
 ```
 0 examples, 0 failures
 ```

 Run the feature test - **no errors**

 ```
 irb>
 require './lib/calculator.rb'

  => true
 calculator = Calculator.new

  => #<Calculator:0x00007fa5b109b678>
 ```

 Onto the next **Feature test**

### The next Feature test and Unit test

We have an 'add' **verb** in the user story so this will be a method

 ```
 irb>
 ...
 calculator.add(1,2)
 ```

 ** Error: ** `NoMethodError (undefined method `add' for #<Calculator:0x00007fa5b109b678>)`

 Now a ** Unit test ** in the rspec file

 ```
 describe Calculator do
   it 'adds 1 and 2 and returns 3' do
   calc = Calculator.new
   expect(calc.add(1,2)).to eq(3)
   end
 end
 ```

 and run `rspec` - and it errors.  ** Great **

 ```
 NoMethodError: undefined method `add' for #<Calculator:0x00007fb219903760>
```

### Fixing our failures

In the calculator code, add in the _simplest_ code to meet the requirements

```
def add(x,y)
  3
end
```

rspec ...... ` 1 example, 0 failures `

feature test ......
``` 2.5.1 :005 > calculator.add(1,2)
 => 3 ```

 
