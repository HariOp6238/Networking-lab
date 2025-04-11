

read -p "Enter a number: " num
original=$num
sum=0

while [ $num -gt 0 ]
do
    digit=$(( num % 10 ))
    square=$(( digit * digit ))
    sum=$(( sum + square ))
    num=$(( num / 10 ))
done

echo "Sum of squares of digits of $original is: $sum"

