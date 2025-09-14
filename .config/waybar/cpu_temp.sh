#!/bin/bash

# looping through each hwmon directory
for i in {0..6}; do
	hwmon_dir="/sys/class/hwmon/hwmon$i"

	if [ -d "$hwmon_dir" ]; then
		if grep -q 'k10temp' "$hwmon_dir/name"; then
			kelvin_temp=$(cat "$hwmon_dir/temp1_input")
			celsius_temp=$((kelvin_temp / 1000))
			echo "${celsius_temp}°C"
			exit 0
		fi
	fi
done
