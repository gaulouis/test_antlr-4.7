antlr=/home/gaulouis/local/src/tmp/test/antlr4.7/tool/target/antlr4-4.7-complete.jar
export CLASSPATH=".:$antlr:$CLASSPATH"


ENABLE=1

if [ "$ENABLE" -eq 1 ]; then

echo "Generate TestLexer"
java -Xmx500M -cp "$antlr:$CLASSPATH" org.antlr.v4.Tool TestLexer.g
echo "Generate TestParser"
java -Xmx500M -cp "$antlr:$CLASSPATH" org.antlr.v4.Tool TestParser.g
echo "Compiling ..."
javac Test*.java

fi

echo 'parsing "<?php echo ?>"'
echo "<?php echo ?>" | java org.antlr.v4.gui.TestRig Test block -tree

echo 'parsing "<?php echo Hell ?>"'
echo "<?php echo Hell ?>" | java org.antlr.v4.gui.TestRig Test block -tree


