#!/bin/bash
password_length="$1"
output_file="passwords.txt"
generate_password() {
    password=$(LC_CTYPE=C tr -dc 'A-Za-z0-9!@#$%^&*()_+=-[]{}|:;<>,.?/~`' < /dev/urandom | head -c "$password_length")
    echo "$password"
}
password=$(generate_password)
echo "$password" >> "$output_file"
