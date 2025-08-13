arrVar=("One" "Two" "Three" "Four" "Five")
# Iterate over the array and print each item
for item in "${arrVar[@]}"; do
  echo "$item"
done

# Iterate over the array with indices
for index in "${!arrVar[@]}"; do
  echo "Index $index: ${arrVar[$index]}"
done
