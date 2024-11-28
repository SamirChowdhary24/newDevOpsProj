# TASK 1 : INSTALL JENKINS

This script contains two functions, install_java and install_jenkins, which help install Java 17 and Jenkins on different operating systems. function 1 - install_java: This function checks your operating system (Debian/Ubuntu, RHEL/Fedora/Centos, or macOS) and installs Java 17 using the correct package manager (like apt, yum, or brew). funtion 2 - install_jenkins: This function installs the latest LTS version of Jenkins. It adds the Jenkins repository and key for Debian-based systems, or uses yum for RHEL-based systems, and installs it. For macOS, it uses brew to install Jenkins.

# ------------------------------------------------------------------------------------------

#TASK 2 : MASTER SLAVE ARCHITECTURE

![image](https://github.com/user-attachments/assets/a6791028-a76d-4e04-b9bd-fa36c6641dab)
create a node to setup master slave architecure using private key of the slave and host information, this architecture can run 5 different tasks as per the needs of the user.
![image](https://github.com/user-attachments/assets/660a7461-6235-4a2d-89f9-06d79f036b52)


# ------------------------------------------------------------------------------------------

# TASK 3 : ROLL BASED AUTHENTICATION

![image](https://github.com/user-attachments/assets/03cc8ece-aa53-4d19-a733-ff4583d6ed15)
3 users were added with the names as : devops , developer , testing
![image](https://github.com/user-attachments/assets/ef85c0c6-9391-42e5-9f54-6768d1f63c56)
![image](https://github.com/user-attachments/assets/6b752248-54e3-4365-98a4-9a648349d9d2)
The developer / devops / test roles have been created and they are given their respective authorisations.
2 global roles have been added as global admin / global reader to give everyone read permissions.
![image](https://github.com/user-attachments/assets/7807d101-9b39-4016-9448-22b419f6deec)
Global reader has been given to all the roles and global admin has been give to the admin user as seen in the screenshot above.
![image](https://github.com/user-attachments/assets/ff8f4e62-51f5-45fc-8ace-0d14f5a1b517)
# ------------------------------------------------------------------------------------------

# TASK 4 : PIPELINE FOR DISK USAGE AUR PROCESS MANAGEMENT#

![image](https://github.com/user-attachments/assets/0c8311bf-1201-4213-8cc3-38e541d71803)
This script monitors the disk usage of the root directory (/). If the usage exceeds 80%, it issues a warning and exits with an error code; otherwise, it confirms normal usage.

![image](https://github.com/user-attachments/assets/39d36dfa-b745-4e27-b998-9b597c425307)
This script identifies system resource usage trends by listing the top 5 processes consuming the most CPU and memory. It also detects and displays any zombie processes to aid in system troubleshooting.
![image](https://github.com/user-attachments/assets/ab7b2f53-a32e-409e-9ebe-262aaa22e00a)
This Jenkins pipeline automates tasks, including cloning a Git repository, monitoring disk usage, and managing processes by running custom scripts on an hourly schedule. On failure, it sends an email notification 

# ------------------------------------------------------------------------------------------

# Task 5 : BACKUP PROCESS

![image](https://github.com/user-attachments/assets/1bae47c9-9a04-4e62-a46f-ca54ed2ae690)
Script passes command-line arguments to set a source "-s" and a destination "-d" directories with an option of compression "-c" . A log funtion is created to store log the timestamps or tracking. If the mandatory requirements are not met it exits with a message.
![image](https://github.com/user-attachments/assets/3118361f-ef57-426d-86d5-6f6dafc9fcda)
This part of the script checks if the source and the destination passed previously, exists or not. If it exists, the cript will continue naturally and if it does not exist, a new directory will be made. If it further fails while creating a directory it will show an error message and exit while upodating the log.
![image](https://github.com/user-attachments/assets/fb0170f2-2166-4aee-98a5-1fa6cf3616f0)
The cript will perform a backup of the source dir at the destination dir, It generates a timestamp backup name. If the compress option is used, the dir is backed up in a .tar.gz file using tar . If not used, it copies the source dir to the new dir. Logs are updated 
at each step whether success or failure. There is also a cleanup fucntion that will remove any bacup files after 7 days .

# ------------------------------------------------------------------------------------------

# TASK 6 : BUILDING A JAVA APP
















