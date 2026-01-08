#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on user input

echo "=== Simple Interest Calculator ==="

# Get user input for principal amount
read -p "Enter the principal amount: " principal

# Get user input for rate of interest
read -p "Enter the rate of interest (in %): " rate

# Get user input for time period
read -p "Enter the time period (in years): " time

# Calculate simple interest using formula: (P × R × T) / 100
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display results
echo ""
echo "=== Calculation Results ==="
echo "Principal Amount: $ $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $ $interest"
