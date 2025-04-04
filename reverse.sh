

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Validate if the input is a valid integer
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please enter an integer."
    exit 1
fi

# Reverse the number using Bash string manipulation
reverse=$(echo "$number" | rev)

# Check if the original number and the reverse are the same
if [ "$number" == "$reverse" ]; then
    echo "The number $number is the same as its reverse. It's a palindrome!"
else
    echo "The number $number is NOT the same as its reverse."
fi

