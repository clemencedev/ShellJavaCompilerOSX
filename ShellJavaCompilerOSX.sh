# Startup text
echo "/**           Shell Java Compiler OS X           **/"
echo " -  clemencedev (https://github.com/clemencedev)  -"
echo "/**                                              **/"

# Get the current directory
SCRIPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Create the bin folder if not already done
if [ ! -d "$SCRIPT_DIR/bin" ]; then
    # Create the folder
    mkdir bin
    echo " * Created /bin folder"
else
    # Clear the bin folder
    echo " * /bin folder already present, emptying it..."
    rm -r $SCRIPT_DIR/bin/*
    echo " * /bin folder is now empty!"
fi

# Copying the files from /src to /bin
echo " * Copying all files from /src to /bin..."
cp -a $SCRIPT_DIR/src/. $SCRIPT_DIR/bin/
echo " * Copying is done!"

# Go in the directory
cd bin

# Find all java files and store them inside a text file
echo " * Searching for files... "
find $SCRIPT_DIR/bin -name "*.java" > compiler_files.txt
echo " * Found all files!"

# Use javac to compile the files
echo " * Compiling the project..."
javac @compiler_files.txt
echo " * Finished compiling the project!"

# Delete the compiler_files.txt
echo " * Cleaning the build..."
rm compiler_files.txt
find . -name "*.java" | xargs rm
echo " * Finished cleaning!"

# The compilation is finished, inform the user
echo " * Finished compiling"
