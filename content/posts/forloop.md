---
title: "Dive Into For Loops"
date: 2021-01-11T22:04:50+02:00
draft: false
toc: false
images:
tags: 
  - beginner
  - basics
  - fundamentals
---
For loops were a concept that I had a tremendous amount of trouble understanding when I first began to 
code. I knew that a loop worked as follows: It ran some amount of times and did something each time it ran.
Nothing much more than that. What did the code `i++` do? Or how did the code `i := 0` affect
anything. I mean unclear. 

Let’s begin by taking a look at a
simple for loop:

```golang
for {
	fmt.Println("wow!")
}
```

We begin with the keyword `for`, which quite simply says, "run this next bit forever." This loop is called an
infinite loop, and will run forever. Unfortunately this can sometimes cause a program to crash, so we always
try to avoid running infinite loops.

Let's add a `break` statement which will tell our loop to stop. 

```golang
for {
	fmt.Println("wow!")
	break
}
```

Try to run this code [here](https://play.golang.org/p/SL9JPRoVdGV) and you will notice that it prints the 
word "wow!" exactly once. So that is not exactly a loop, as it only runs once. How could we create a way that
the loop will run lets say 5 times, and then call break. 

Something like this:

```golang
for {
	fmt.Println("wow!")
	if "loop has run 5 times" {
	    break
	}   
}
Output:
//wow!
```

What we are missing is some sort of way to keep track of how many times our loop has run. Let's create an 
index called `i`, and set `i` to `0`. Each time the loop runs, we will increment `i` by `1`. This way we can 
always keep track of how many times our loops has run.

For example, the first time the loop runs, `i = 0`. Then inside the loop, we increment `i` by `1`. Now the 
loop runs again with `i = 1`, and again, before the loop finishes we increment `i`. This will keep happening 
until `i = 5`, and then we break the loop. Let's see this in code.

```golang
i := 0

for {
	fmt.Println("wow!", i)
	if i == 5 {
	    break
	}   
	i++
}
Output:
//wow!, 0
//wow!, 1
//wow!, 2
//wow!, 3
//wow!, 4
//wow!, 5
```

Try to [run](https://play.golang.org/p/OCZuQZxWEc9) the code, and you will notice that it prints out "wow!", 
a total of 6 times. This is because `i` is initially `0`, and increments by `1` right before the loop 
finishes. Since `i` starts at `0`, the loop runs `6` times before `i` is equal to `5`. If it were to start
at 1, then it would run only 5 times.

It's also incredibly important in for loops, to always track and understand what the value of `i` is. Print
it out frequently, and don't move forward until you understand the role `i` plays in a loop. It is not just
an index though. `i` has an incredible power. Since it increments by 1 each time a loop runs, it can 
allow you to have your loop do something different each time it runs.

Take this as an example:

```golang	
i := 0

for {
    fmt.Println(i*100)
    if i == 3 {
        break
    }
    i++
}
Output:
// 0
// 100
// 200 
// 300
```

In this trivial example, we printed out `i * 100` each time the loop ran. If that was something you needed,
I mean there you go. In a real application, this could allow you to print out the value of an array at 
position `i`. 

So our code is begging to get a bit messy. We have some index which allows us to keep track of how many times
the loop ran, and an if statement which checks if the loop ran x amount of times and should end. Imagine a 
world where all that code could fit into one line. It would look something like our current world in fact.

Check this out:

```golang
for i:=0; i < 5; i++ {
	fmt.Println("hi!", i)
}
Output:
//hi! 0
//hi! 1
//hi! 2
//hi! 3
//hi! 4
```

Let's break this down bit by bit. First we create our index `i` and set it to 0. `i := 0`. Next, we have our
"if statement". The condition that checks if the loop should break. This is a bit tricky, as it runs as long
as the condition returns true, and breaks when it is false. `i < 5` will return true until `i` becomes `5`,
and you might know that `5` is not less than `5`. The final bit of this code is `i++`. This sets the value
of `i` to be `+ 1` of its previous value. If `i` begins at `0`, this bit will set `i` to `1` when the loop
finishes for the first time. 

Try playing around with this code, for example instead of `i++`, try setting the bit to `i+=2`. My advice
for learning loops is to always print out the value of the index whenever you get confused, and to play 
around with each variable until you truly understand it. The importance of loops cannot be stressed enough,
and it would be a shame to dread writing one. Good luck! As always, never copy and paste if you are learning!


 


