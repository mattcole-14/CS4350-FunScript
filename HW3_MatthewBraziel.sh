#!/bin/bash

# Name: Matthew Braziel
# CS 4350 - Unix Systems Programming
# Section Number: 001
# Assignment Number: 3
# Due Date: 10/25/2026

echo "Shell Programming By Matthew Braziel"
echo

echo "1. Creating a new File FunScript.txt."

touch FunScript.txt
cat > FunScript.txt << EOF
Fall 2026
CS4350
Section #
001
scripts and shell programming using
zeus ide
@ TEXAS STATE UNIVERSITY
EOF

echo
echo "2. The content of the created file is :"
cat FunScript.txt

echo
echo "3. All lines with alphabet characters :"
grep '[[:alpha:]]' FunScript.txt

echo
echo "4. All lines with digits :"
grep '[[:digit:]]' FunScript.txt

echo
echo "5. All lines with lowercase characters :"
grep '[[:lower:]]' FunScript.txt

echo
echo "6. All lines with uppercase characters :"
grep '[[:upper:]]' FunScript.txt

echo
echo "7. All lines with alphanumeric characters :"
grep '[[:alnum:]]' FunScript.txt

echo
echo "8. All lines with punctuation characters :"
grep '[[:punct:]]' FunScript.txt

echo
echo "9. All the lines with the letter s followed by space :"
grep 's ' FunScript.txt

echo
echo "10. All the lines with the word zeus followed by space :"
grep 'zeus ' FunScript.txt

echo
echo "11. All the line that the word programming appears at the end of the line :"
grep 'programming$' FunScript.txt

echo
echo "12. All the lines that the word Fall appears at the beginning of the sentence :"
grep '^Fall' FunScript.txt

echo
echo "13. All lines that have a word that starts with C and ends with 0 :"
grep -E '\bC[[:alnum:]]*0\b' FunScript.txt

echo
echo "14. All lines that contain a word that starts with s and end with l :"
grep -E '\bs[[:alpha:]]*l\b' FunScript.txt

echo
echo "15. Deleting the existing File FunScript.txt"
rm FunScript.txt

echo
echo "16. Display the content of FunScript.txt :"

if [ -f FunScript.txt ]
then
    cat FunScript.txt
else
    echo "FunScript.txt does not exist."
fi

echo
echo "Prepared by Matthew Braziel"
echo
echo "Due Date : 10 - 25 - 2026"
echo
echo "Today's Date is :"
echo
echo "Day : $(date +%d)"
echo
echo "Month : $(date +%m)"
echo
echo "Year : $(date +%Y)"
echo
echo "Time : $(date +%T)"
echo
echo "The name of the file that contains the script is : $0"

# end of script- Matthew Braziel