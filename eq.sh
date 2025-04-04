

# Prompt the user for coefficients
echo "Enter the coefficients of the quadratic equation (a, b, c):"
read a b c 

# Validate that 'a' is not zero (since it's not a quadratic equation if a = 0)
if [ "$a" -eq 0 ]; then
    echo "This is not a quadratic equation (a cannot be 0)."
    exit 1
fi

# Calculate the discriminant
discriminant=$((b * b - 4 * a * c))

# Check for the nature of the roots
if [ "$discriminant" -lt 0 ]; then
    echo "The quadratic equation has no real roots."
elif [ "$discriminant" -eq 0 ]; then
    # One real root
    root=$(echo "scale=2; (-$b) / (2 * $a)" | bc -l)
    echo "The quadratic equation has one real root: $root"
else
    # Two real roots
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2 * $a)" | bc -l)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2 * $a)" | bc -l)
    
    # Check if roots are valid
    if [ -z "$root1" ] || [ -z "$root2" ]; then
        echo "Error in calculating roots. Check the input values."
    else
        # Display the roots in ascending order
        if (( $(echo "$root1 > $root2" | bc -l) )); then
            temp=$root1
            root1=$root2
            root2=$temp
        fi
        
        echo "The roots of the quadratic equation are: $root1 and $root2"
    fi
fi

