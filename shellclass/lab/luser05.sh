#!/bin/bash -x

# This script generates a list of random passwords

# A random number as a passwords
PASSWORD="${RANDOM}"
echo "${PASSWORD}"


# Three random njmbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Use the current date/time as the basis for the password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Use nanoseconds to act as randomization
  PASSWORD=$(date +%s%N)
  echo "${PASSWORD}"

# A better password
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"


# An even better password
PASSWORD=$(data +%s%N${RANDOM}${RANDOM} | sha256sum | head -c48)
