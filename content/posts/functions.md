---
title: "Functions"
date: 2021-01-12T21:31:55+02:00
draft: false
toc: true
images:
tags:
    - beginner
    - basics
    - fundamentals
---
Functions are the building blocks of coding. They allow you to create reusable and flexible code, and help
keep code duplication to a minimum. As a general rule of thumb, if you notice yourself coping and pasting a few-plus
lines of code, chances are, that code should become a function. Imagine every time you wanted to print something out, 
you had to allocate bytes and set a buffer and do a bunch of random stuff. You would go insane. Thankfully we have a 
print function, which actually does all that stuff behind the scenes, and allows us to print anything using only one line.

Functions are comprised of a few things. Let's take a look at a simple function, and we will break it down piece by piece.

```golang
func sum(x int, y int) {
	fmt.Println(x + y)
}
```

We first declare our intention to create a function by using the `func` keyword. The next word that follows func is the
name we are giving our function. In our case we called our function sum. Immediately after naming our function, we 
create parentheses, and assign the "parameters" of our function. Let's discuss a bit what parameters are, as they can
get pretty confusing. 

## Parameters

Picture this scenario. You are creating a program that allows a user to input any number, and your program will print
that number cubed. E.g. `5 -> 5*5*5`. Let's create a cubed function that does exactly that.

```golang

func cubed(num int) {
	fmt.Println(num * num * num)
}
```
Here we named our function cubed, and we gave the function a parameter called `num` that has a type `int`. In order to
fully understand what this parameter does, we need to see what happens when we call this function.

```golang
cubed(10)
cubed(5)
cubed(8)
// Output:
// 1000
// 125
// 512
```

The parameter `num` became whatever number we passed in the parentheses during the function call. First `num` became 10, 
then 5, then 8. Parameters are what enable functions to be so versatile. Instead of writing `fmt.Println(5*5*5)`, we can 
just use a function parameter that will change dynamically. Parameters are kinda like variables for functions, that 
get values when you call the function.

## Arguments

To run a function is to call it. When you call a function that has one or more parameters, you must "pass in" arguments. 
Arguments are the values you want the function parameters to become. Using our cubed example, when I call cubed below
I pass in the argument 5. Take a look.

```golang
func cubed(num int) {
    fmt.Println(num * num * num)
}

cubed(5)
```

In this example `5` is called an argument. The function parameter `num` became `5`, since the argument given was 5.
Going back to our fist example of the function `sum`, lets now call it passing in arguments, and see what happens.

```golang
func sum(x int, y int) {
	fmt.Println(x + y)
}

sum(10, 15)
// Output:
// 25
```

Run the code [here](https://play.golang.org/p/J_5k5juG_cD) and play around with the arguments. Understand exactly what
they do, and how they directly relate to parameters. To sum up parameters and arguments, parameters are the "variables"
of a function that are specified during the function creation, and arguments are the values you want those parameters to
become when you call the function.

## Return Values

So currently our cubed function just prints out a number cubed. What if instead of printing it out, we wanted to store
that value in a variable for later usage? Let's create a variable called `numCubed` that will store our number 
cubed. Inside `cubed`, instead of printing out `num` cubed, lets set `numCubed` to `num` cubed. 

```golang
var numCubed int

func cubed(num int) {
    numCubed = num * num * num 	
}

cubed(5)
fmt.Println(numCubed)
// Output:
// 125
```

Try it out [here](https://play.golang.org/p/L7at3AiAZLg). Although this current implementation does work, it is quite
pathetic. For one, if we call `cubed` again with a different argument, we lost the previous value of numCubed. Also, 
it's best to avoid creating unnecessary global variables. 

What if we could do something like this. 

```golang
func cubed(num int) {
    "send back:" num * num * num 	
}

numCubed := cubed(5) // 125
differentNumCubed := cubed(100) // 1000
```

Enter return values. A return value allows you to send back a value that you can then store away in a variable. 
Let's see what our `cubed` function looks like with a `return` statement.

```golang
func cubed(num int) int {
	return num * num * num 
}

numCubed := cubed(5)
fmt.Println(numCubed)
// Output:
// 125
```

Try out the [code](https://play.golang.org/p/wgUx4GRgoFM) and you will see `numCubed` gets the value that cubed returns.
In order to return a value in golang, you must specify the return `type`. In our function `cubed` we are returning an int,
but in a different function you might want to return a string instead. In
golang, you can actually return multiple values, but most languages will limit you to one value.

Good Luck!
