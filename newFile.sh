#!/usr/bin/env bash

NAME=$1

if [ "${NAME}" == "" ]
then 
	echo "Please provide file basename as argument"
	exit 1
fi

mkdir -p src/main/scala/com/github/softwaresimian/interview
mkdir -p src/test/scala/com/github/softwaresimian/interview

echo "Creating files for ${NAME}"

echo "{ \"Name\": \"${NAME}\" }" | mustache-cli templates/Main.scala >"src/main/scala/com/github/softwaresimian/interview/${NAME}.scala"
echo "{ \"Name\": \"${NAME}\" }" | mustache-cli templates/Main.java >"src/main/scala/com/github/softwaresimian/interview/${NAME}.java"
echo "{ \"Name\": \"${NAME}\" }" | mustache-cli templates/MainTest.scala >"src/test/scala/com/github/softwaresimian/interview/${NAME}Test.scala"

#touch "src/main/scala/${NAME}.scala"
#cp src/test/scala/FooTest.scala "src/test/scala/${NAME}Test.scala"
