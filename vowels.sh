

read -p "Enter a line of text: " line

# Convert to lowercase to make it case-insensitive
line=$(echo "$line" | tr 'A-Z' 'a-z')

# Use grep and wc to count vowels
vowel_count=$(echo "$line" | grep -o "[aeiou]" | wc -l)

echo "Number of vowels: $vowel_count"

