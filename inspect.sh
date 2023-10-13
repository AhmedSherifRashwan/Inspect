echo "What can we run as sudo:" && sudo -l && echo "Finding SUID programs:" && find / -perm -4000 2>/dev/null && echo "Finding files with capabilities:" && getcap -r / 2>/dev/null
