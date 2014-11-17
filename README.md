# Meta Programming: Day 1 of Makers Academy's "Five Languages in Five Days"
We were set the challenge of writing a program that will create methods
on the fly, but only if they follow the pattern of "has_octocat?".
Using :method_missing and :define_method, we create a program
that more or less writes itself.

![alt text](http://imgs.xkcd.com/comics/hofstadter.png)

### Languages and Tools
```
	- Ruby
	- RSpec
```

### How to Open
Clone this repository.
```
	$ git clone git@github.com:barr-code/meta_ruby.git
```
Change into the directory.
```
	$ cd meta_ruby
```
Run my tests.
```
	$ rspec
```

### Fire it Up
```
	$ irb
	> require './lib/students'
	> vic = Student.new
	> vic.has_octocat?
	> vic.award :octocat
	> vic.has_octocat?
```

Hours and hours of fun!

### What I Learned
Meta programming is weird. Machines will take over when they learn to 
write themselves.
