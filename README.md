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

I wanted to make the code as gross as possible so the Python code needs to be read to figure out what is going on. The Python code just compiles and runs some assembly code to read a CSV into another assembly file. Then, the second assembly file is run and it outputs a giant circle onto the console. The output is random characters as the border because it's funny or something. If you have a small screen the circle might not look as cool but I will attach a screenshot of the output on my monitor.
