

# Prompt the user to enter a string
echo "Enter a string:"
read str

# Remove spaces and convert to lowercase for accurate comparison
clean_str=$(echo "$str" | tr -d '[:space:]' | tr 'A-Z' 'a-z')

# Reverse the string using 'rev'
reverse_str=$(echo "$clean_str" | rev)

# Check if the original string and the reversed string are the same
if [ "$clean_str" == "$reverse_str" ]; then
    echo "The string \"$str\" is a palindrome!"
else
    echo "The string \"$str\" is NOT a palindrome."
fi

