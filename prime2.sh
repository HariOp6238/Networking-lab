

read -p "Enter the lower limit: " lower
read -p "Enter the upper limit: " upper

echo "Prime numbers between $lower and $upper are:"

for (( num=lower; num<=upper; num++ ))
do
    if [ $num -lt 2 ]; then
        continue
    fi

    is_prime=1
    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 )); then
            is_prime=0
            break
        fi
    done

    if [ $is_prime -eq 1 ]; then
        echo "$num"
    fi
done

