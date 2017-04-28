TERMUX_HOME="/data/data/com.termux/files"
BIN="$TERMUX_HOME/usr/bin"

if [ `which ecj` == "" ];then
	apt-get install ecj
fi

if [ `which dx` == "" ];then
	apt-get install dx
fi

if [ ! -f "$BIN/java" ];then
	command_java=`ln -s $PWD/java $BIN/java`
	echo "Linking java to $TERMUX_HOME/usr/bin/java"
	exec $command_java
fi

if [ ! -f "$BIN/javac"];then
	command_javac=`ln -s $PWD/javac $BIN/javac`
	echo "Linking javac to $TERMUX_HOME/usr/bin/javac"
	exec $command_javac
fi
