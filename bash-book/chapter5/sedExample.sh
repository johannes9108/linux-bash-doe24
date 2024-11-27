#!/bin/bash

sep="--------------------------"
exampleFile=$(cat "example")
printf '%s\n' "$exampleFile"

echo $sep
echo "sed '/erors/p' example ->"
echo $sep
sed '/erors/p' example

echo $sep
echo "sed -n '/erors/p' example ->"
echo $sep
sed -n '/erors/p' example

echo $sep
echo "sed '/erors/d' example ->"
echo $sep
sed '/erors/d' example

echo $sep
echo "sed -n '/^This.*errors.$/p' example ->"
echo $sep
sed -n '/^This.*errors.$/p' example

echo $sep
echo "sed '2,4d' example ->"
echo $sep
sed '2,4d' example

echo $sep
echo "sed '3,$d' example ->"
echo $sep
sed '3,$d' example

echo $sep
echo "sed -n '/a text/,/This/p' example ->"
echo $sep
sed -n '/a text/,/This/p' example

echo $sep
echo "sed 's/erors/errors/' example ->"
echo $sep
sed 's/erors/errors/' example

echo $sep
echo "sed 's/erors/errors/g' example ->"
echo $sep
sed 's/erors/errors/g' example

echo $sep
echo "sed 's/^/> /' example ->"
echo $sep
sed 's/^/> /' example

echo $sep
echo "sed 's/$/EOL/' example ->"
echo $sep
sed 's/$/EOL/' example

echo $sep
echo "sed -e 's/erors/errors/g' -e 's/last/final/g' example ->"
echo $sep
sed -e 's/erors/errors/g' -e 's/last/final/g' example



