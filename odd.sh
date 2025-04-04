

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Check if the input is a valid integer
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please enter an integer."
    exit 1
fi

# Check if the number is even or odd
if (( number % 2 == 0 )); then
    echo "The number $number is even."
else
    echo "The number $number is odd."
fi

