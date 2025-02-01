#!/bin/bash

# Interactive script to fix common errors in Kali Linux or Termux

clear
echo "Hello, you are here testing an error fixing command!"
echo "Choose one of the options below to fix common errors:"

# Display menu options
echo "1. Update package list"
echo "2. Fix broken packages"
echo "3. Update the system"
echo "4. Update system distribution"
echo "5. Fix package dependencies"
echo "6. Install essential packages"
echo "7. Fix root permissions"
echo "8. Install missing packages"
echo "9. Clean unnecessary packages"
echo "10. Clean package cache"
echo "11. Check for duplicate packages"
echo "12. Reinstall broken packages"
echo "13. Restart services after changes"
echo "14. Restart SSH service"
echo "15. Configure sudo"
echo "16. Check and fix root permissions"
echo "17. Install Nmap"
echo "18. Install Hydra"
echo "19. Configure firewall"
echo "20. Fix DNS settings"
echo "21. Check Apache status"
echo "22. Check and fix APT errors"
echo "23. Check disk space"
echo "24. Check file permissions"
echo "25. Install Python3"
echo "26. Install Node.js"
echo "27. Install Docker"
echo "28. Check system error logs"
echo "29. Restart the system"
echo "30. Fix systemd configuration files"
echo "31. Restart Apache server"
echo "32. Adjust SSH configuration"
echo "33. Check folder permissions"
echo "34. Check configuration file permissions"
echo "35. Fix systemd configuration files"
echo "36. Exit"

# Prompt the user to choose an option
read -p "Enter the number of the option you want to select: " option

# Function to execute based on the selected option
case $option in
  1)
    echo "Updating package list..."
    apt-get update
    ;;
  2)
    echo "Fixing broken packages..."
    apt-get install -f
    ;;
  3)
    echo "Updating the system..."
    apt-get upgrade -y
    ;;
  4)
    echo "Updating distribution..."
    apt-get dist-upgrade -y
    ;;
  5)
    echo "Fixing package dependencies..."
    apt-get --fix-broken install
    ;;
  6)
    echo "Installing essential packages (curl, wget, git, sudo)..."
    apt-get install -y curl wget git sudo
    ;;
  7)
    echo "Fixing root permissions..."
    chmod 700 /root
    ;;
  8)
    echo "Installing missing packages..."
    apt-get install -y build-essential
    ;;
  9)
    echo "Cleaning unnecessary packages..."
    apt-get autoremove -y
    ;;
  10)
    echo "Cleaning package cache..."
    apt-get clean
    ;;
  11)
    echo "Checking for duplicate packages..."
    dpkg --get-selections | grep -i "package_name"
    ;;
  12)
    echo "Reinstalling broken packages..."
    dpkg --configure -a
    ;;
  13)
    echo "Restarting services after changes..."
    systemctl daemon-reload
    ;;
  14)
    echo "Restarting SSH service..."
    systemctl restart ssh
    ;;
  15)
    echo "Configuring sudo..."
    usermod -aG sudo $USER
    ;;
  16)
    echo "Checking root permissions..."
    id -u
    ;;
  17)
    echo "Installing Nmap..."
    apt-get install -y nmap
    ;;
  18)
    echo "Installing Hydra..."
    apt-get install -y hydra
    ;;
  19)
    echo "Configuring firewall..."
    ufw enable
    ;;
  20)
    echo "Fixing DNS settings..."
    systemd-resolve --flush-caches
    ;;
  21)
    echo "Checking Apache status..."
    systemctl status apache2
    ;;
  22)
    echo "Checking APT errors..."
    dpkg --audit
    ;;
  23)
    echo "Checking disk space..."
    df -h
    ;;
  24)
    echo "Checking file permissions..."
    ls -l /etc/passwd /etc/shadow
    ;;
  25)
    echo "Installing Python3..."
    apt-get install -y python3 python3-pip
    ;;
  26)
    echo "Installing Node.js..."
    apt-get install -y nodejs npm
    ;;
  27)
    echo "Installing Docker..."
    apt-get install -y docker.io
    ;;
  28)
    echo "Checking system error logs..."
    journalctl -xe
    ;;
  29)
    echo "Restarting the system..."
    reboot
    ;;
  30)
    echo "Fixing systemd configuration files..."
    systemd-analyze verify
    ;;
  31)
    echo "Restarting Apache server..."
    systemctl restart apache2
    ;;
  32)
    echo "Adjusting SSH configuration..."
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
    ;;
  33)
    echo "Checking folder permissions..."
    ls -ld /home/$USER
    ;;
  34)
    echo "Checking configuration file permissions..."
    ls -l /etc/sudoers
    ;;
  35)
    echo "Fixing systemd configuration files..."
    systemd-analyze verify
    ;;
  36)
    echo "Exiting..."
    exit 0
    ;;
  *)
    echo "Invalid option, please choose a valid option."
    ;;
esac
