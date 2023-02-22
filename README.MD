Shell Java Compiler OS X
=======
A simple Java compiler for Mac OS X.

### How to use
---

First you will need to create a folder named `src`, where you will put all your classes in. Your folder will look like this:

```
    - src/
        -> All of your classes with packages
    - ShellJavaCompilerOSX.sh
```

Then, in a terminal in your project folder, execute the shell file using the command:

```
    sh ShellJavaCompilerOSX.sh
```

And, after that you will have a new `bin` folder. Using the same terminal, you will be able to execute your main class using a simple `java` command:

```
    java -cp ./bin Path.To.Your.Main.Class.YourMainClassName
```

### License
---

The license is available in the file `LICENSE.MD`.
