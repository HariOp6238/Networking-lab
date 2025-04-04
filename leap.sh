
# Prompt the user to enter a year
echo "Enter a year:"
read year

# Check if the input is a valid year (positive integer)
if ! [[ "$year" =~ ^[0-9]{4}$ ]]; then
    echo "Invalid input. Please enter a 4-digit year."
    exit 1
fi

# Check for leap year conditions
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi

