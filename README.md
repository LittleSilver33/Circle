# Circle
The ugliest way to draw a circle

To Run:
To begin, it is assumed that you are using a UNIX system. We will continue as if you are using WSL or Linux and that you are able to run Python code as well.

To begin, just run the setup.py file, I wrote this file to make the compilation process a little easier as it takes a few minutes of commands.

If you want to run it yourself, run the following commands:

```as repack.s -o repack.o```

```gcc repack.o -o repack_executable```

```./repack_executable```

```as circle_recovered.s -o circle.o```

```gcc circle.o -o circle```

```./circle```



Explanation:

I wanted to make the code as gross as possible and put it behind several layers of obfuscation. 

First, we have the Python code. The Python code is gross enough and takes quite a while to learn what it does (especially because it uses some weird libraries). The TLDR is that the Python code really just compiles and runs a piece of assembly code. This then means we have to read the assembly code to see what is done.

The first piece of assembly code. The Assembly code is very simple! It is really like a 60-line piece of C code that just reads in a CSV and writes it to a different file (changing all of the 7-bit numbers into characters). After it does this, it outputs a piece of assembly code that was just reassembled from the CSV. 

The second piece of assembly code. This code is something like 100 lines in C, which really isn't that terrible. However, with optimization on the compilation, I have no idea how to look at this piece of assembly code. It is a 500-and-something line block of gibberish. This code basically outputs the entire circle. I thought about writing some code to delete system32 like 1/6 times or something but that was a little too mean for my taste. 

It might not be the single worst piece of code, but it is the single grossest thing ever from a practical user standpoint. If you were provided this Python file randomly and told to run it, you would have to check 3 different files (all of which I would have no idea what to do) just to see if it is going to do something malicious. That is my definition of gross code!
