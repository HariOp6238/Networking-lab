

# Read numbers from the user
echo "Enter numbers separated by spaces:"
read -a numbers

# Initialize sums
even_sum=0
odd_sum=0

# Loop through the numbers
for num in "${numbers[@]}"; do
    if (( num % 2 == 0 )); then
        even_sum=$((even_sum + num))
    else
        odd_sum=$((odd_sum + num))
    fi
done

# Display the results
echo "Sum of even numbers: $even_sum"
echo "Sum of odd numbers: $odd_sum"

