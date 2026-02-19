#!/bin/bash
subject="Alert: High cpu usage"
body="Cpu usage exceeded 90"
recipient="emmanuelsulwe@gmail.com"
echo "$body" | mail -s "$subject" "$recipient"
#incomplete to add more validations
