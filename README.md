# 🧑‍💻 User and Group Management Script

This Bash script provides a **menu-driven interface** for managing **users and groups** on a **Linux system (CentOS, RHEL, Ubuntu, etc.)**.  
It simplifies common administrative tasks such as adding, deleting, or modifying users and groups — all from an interactive command-line menu.

---

## 📋 Features

### 👤 User Management
- Add new users  
- Delete existing users  
- Change a user’s primary group  
- Add a user to a secondary group  
- Disable a user account (lock login)  
- Enable a user account (unlock login)  
- Set or change a user password  
- List all system users  

### 👥 Group Management
- Create new groups  
- Delete existing groups  
- List all system groups  

---

## 🧰 Requirements
- Linux system (CentOS / RHEL / Ubuntu / Debian)
- Bash shell (`#!/bin/bash`)
- `sudo` privileges (since user and group operations require administrative rights)

---

## 🚀 How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/mohamed00mamdouh/User-And-Group-Management-Script.git
   ```

2. **Make the script executable:**
   ```bash
   chmod +x user_group_management.sh
   ```

3. **Run the script:**
   ```bash
   ./user_group_management.sh
   ```

4. **Follow the interactive menu:**
   ```
   =>Menu<=
   1) user management
   2) group management
   3) exit
   choose an option:
   ```

---

## 🖥️ Example Run

```
=>Menu<=
1) user management
2) group management
3) exit
choose an option: 1

====================================
==Welcome To User Management Menue==
====================================
1-Add user
2-Delete user
3-Change primary group for a user
4-Add user to secondary group
5-Disable user
6-Enable user
7-Create or change password
8-List users
9-Back
choose operation: 1
Enter user name: testuser
```

---

## ⚙️ Notes
- The script uses `sudo` internally — make sure your user has `sudo` privileges.  
- If you want it to run without being prompted for `sudo` passwords, configure **passwordless sudo** for specific commands in `/etc/sudoers` (only if it’s safe in your environment).  
- Works best on **CentOS** and **RHEL**, but compatible with most Linux distributions.  


---

## 🙌 Author
**Mohamed Mamdouh**  

