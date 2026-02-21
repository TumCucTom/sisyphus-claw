#!/bin/bash
# Create daily log files for today

DATE=$(date +%Y-%m-%d)

# Copy templates to today's files
cp data/nutrition/template.json "data/nutrition/${DATE}.json"
cp data/training/template.json "data/training/${DATE}.json"
cp data/weights/template.json "data/weights/${DATE}.json"

# Replace placeholder date
sed -i '' "s/YYYY-MM-DD/$DATE/" "data/nutrition/${DATE}.json"
sed -i '' "s/YYYY-MM-DD/$DATE/" "data/training/${DATE}.json"
sed -i '' "s/YYYY-MM-DD/$DATE/" "data/weights/${DATE}.json"

echo "Created daily logs for $DATE"
