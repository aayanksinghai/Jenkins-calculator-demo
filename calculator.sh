#!/bin/bash
# A simple calculator shell program

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Remainder"

echo -n "Enter the First Number: "
read a
echo -n "Enter the Second Number: "
read b
echo -n "Enter your Choice: "
read ch

case $ch in
   1) res=$((a + b))
      ;;
   2) res=$((a - b))
      ;;
   3) res=$((a * b))
      ;;
   4) 
      if [ "$b" -eq 0 ]; then
         echo "Error: Division by zero"
         exit 1
      fi
      res=$((a / b))
      ;;
   5)
      if [ "$b" -eq 0 ]; then
         echo "Error: Division by zero"
         exit 1
      fi
      res=$((a % b))
      ;;
   *)
      echo "Invalid Choice"
      exit 1
      ;;
esac

echo "Result : $res"

