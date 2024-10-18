#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9]*%')

# Full and short texts

echo "  $BAT" 

exit 0
