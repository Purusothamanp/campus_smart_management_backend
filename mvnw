#!/bin/sh
# ----------------------------------------------------------------------------
# Maven Start Up Batch script for Unix
# ----------------------------------------------------------------------------

PRG="$0"
while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`"/$link"
  fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`" >/dev/null
APPDIR="`pwd`"
cd "$SAVED" >/dev/null

WRAPPER_JAR="$APPDIR/.mvn/wrapper/maven-wrapper.jar"
WRAPPER_LAUNCHER="org.apache.maven.wrapper.MavenWrapperMain"

exec java "-Dmaven.multiModuleProjectDirectory=$APPDIR" -classpath "$WRAPPER_JAR" "$WRAPPER_LAUNCHER" "$@"
