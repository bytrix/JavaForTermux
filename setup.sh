TERMUX_HOME="/data/data/com.termux/files"
command_java=`ln -s $PWD/java $TERMUX_HOME/usr/bin/java`
command_javac=`ln -s $PWD/javac $TERMUX_HOME/usr/bin/javac`
echo "Linking java to $TERMUX_HOME/usr/bin/java"
exec $command_java
echo "Complete linking java to $TERMUX_HOME/usr/bin/java"
echo "Linking javac to $TERMUX_HOME/usr/bin/javac"
exec $command_javac
echo "Complete linking javac to $TERMUX_HOME/usr/bin/javac"
