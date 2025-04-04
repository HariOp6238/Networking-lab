
# Prompt the user to enter the radius
echo "Enter the radius of the circle:"
read radius

# Validate the input (must be a positive number)
if ! [[ "$radius" =~ ^[0-9]+(\.[0-9]+)?$ ]] || [ "$radius" -le 0 ]; then
    echo "Invalid input. Please enter a positive number for the radius."
    exit 1
fi

# Define the value of pi
pi=3.14

# Calculate the area and circumference
area=$(echo "scale=4; $pi * $radius * $radius" | bc -l)
circumference=$(echo "scale=4; 2 * $pi * $radius" | bc -l)

# Display the results
echo "For a circle with radius $radius:"
echo "Area = $area"
echo "Circumference = $circumference"

