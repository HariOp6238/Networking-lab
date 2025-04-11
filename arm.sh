

read -p "Enter a number: " num
original=$num
sum=0

# Find number of digits
n=${#num}

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    power=$((digit ** n))
    sum=$((sum + power))
    num=$((num / 10))
done

if [ $sum -eq $original ]; then
    echo "$original is an Armstrong number."
else
    echo "$original is NOT an Armstrong number."
fi

