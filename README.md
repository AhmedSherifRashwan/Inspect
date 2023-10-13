# INSPECT
## Overview

INSPECT is a bash script designed to provide a quick overview of security-related information on a Unix-like system. It includes checks for sudo privileges, SUID programs, and files with capabilities.

## Usage

1. **Download the script:**

    ```bash
    wget https://example.com/INSPECT
    ```

    Replace `https://example.com/INSPECT` with the actual URL of the script if hosted remotely.

2. **Make the script executable:**

    ```bash
    chmod +x INSPECT
    ```

3. **Run the script:**

    ```bash
    ./INSPECT
    ```

    Note: Some commands may require elevated privileges, and you might be prompted to enter your password.

## Script Details

- **What can we run as sudo:**

    ```bash
    sudo -l
    ```

    Lists commands that the current user can run with sudo privileges.

- **Finding SUID programs:**

    ```bash
    find / -perm -4000 2>/dev/null
    ```

    Locates Set User ID (SUID) programs on the system.

- **Finding files with capabilities:**

    ```bash
    getcap -r / 2>/dev/null
    ```

    Identifies files with capabilities on the system.

---
