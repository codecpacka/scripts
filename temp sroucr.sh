#!/bin/zsh

# 1. Sample JSON data containing an array of items
json_data='[
    {"name": "Apples", "qty": 5},
    {"name": "Bananas", "qty": 12},
    {"name": "Oranges", "qty": 3}
]'

# 2. Loop through each item using jq's compact output (-c)
# This forces each JSON object onto its own single line.
echo "$json_data" | jq -c '.[]' | while read -r item; do
    # Extract specific values from each item object
    name=$(echo "$item" | jq -r '.name')
    qty=$(echo "$item" | jq -r '.qty')
    
    echo "Item: $name | Quantity: $qty"
done
