# TASK 1 : INSTALL JENKINS
https://github.com/SamirChowdhary24/newDevOpsProj/blob/main/jenkins_installation_TASK1.sh

![image](https://github.com/user-attachments/assets/53c1cb8d-9066-46c9-93b8-04c4a8320304)
This Bash script automates the installation of Java 17 and Jenkins, adapting to the operating system (Debian-based Linux or macOS). It includes three key functions:

**os()**: Detects the operating system. If the script runs on Linux with the apt package manager, the os variable is set to "debian." For macOS, it's set to "mac." Unsupported systems prompt an error message, and the script exits.

**java()**: Installs Java 17. On Debian, it updates repositories and installs openjdk-17-jdk using apt . On macOS, it uses Homebrew to install openjdk@17, providing progress messages throughout.

**jenkins()**: Handles Jenkins installation. For Debian, it adds Jenkins official repository, updates packages, and installs Jenkins via apt. On macOS, it installs Jenkins LTS using Homebrew, with status updates displayed.

The script executes these functions sequentially, ensuring OS detection and seamless installation of the required tools.


# ------------------------------------------------------------------------------

# TASK 2 : MASTER SLAVE ARCHITECTURE

![image](https://github.com/user-attachments/assets/a6791028-a76d-4e04-b9bd-fa36c6641dab)

create a node to setup master slave architecure using private key of the slave and host information, this architecture can run 5 different tasks as per the needs of the user.

![image](https://github.com/user-attachments/assets/660a7461-6235-4a2d-89f9-06d79f036b52)


# ------------------------------------------------------------------------------

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
# ------------------------------------------------------------------------------

# TASK 4 : PIPELINE FOR DISK USAGE AUR PROCESS MANAGEMENT#
https://github.com/SamirChowdhary24/newDevOpsProj/blob/main/script1.sh
![image](https://github.com/user-attachments/assets/0c8311bf-1201-4213-8cc3-38e541d71803)

This script monitors the disk usage of the root directory (/). If the usage exceeds 80%, it issues a warning and exits with an error code; otherwise, it confirms normal usage.

![image](https://github.com/user-attachments/assets/39d36dfa-b745-4e27-b998-9b597c425307)

This script identifies system resource usage trends by listing the top 5 processes consuming the most CPU and memory. It also detects and displays any zombie processes to aid in system troubleshooting.

![image](https://github.com/user-attachments/assets/ab7b2f53-a32e-409e-9ebe-262aaa22e00a)

This Jenkins pipeline automates tasks, including cloning a Git repository, monitoring disk usage, and managing processes by running custom scripts on an hourly schedule. On failure, it sends an email notification 

# ------------------------------------------------------------------------------

# Task 5 : BACKUP PROCESS

![image](https://github.com/user-attachments/assets/1bae47c9-9a04-4e62-a46f-ca54ed2ae690)

Script passes command-line arguments to set a source "-s" and a destination "-d" directories with an option of compression "-c" . A log funtion is created to store log the timestamps or tracking. If the mandatory requirements are not met it exits with a message.

![image](https://github.com/user-attachments/assets/3118361f-ef57-426d-86d5-6f6dafc9fcda)

This part of the script checks if the source and the destination passed previously, exists or not. If it exists, the cript will continue naturally and if it does not exist, a new directory will be made. If it further fails while creating a directory it will show an error message and exit while upodating the log.

![image](https://github.com/user-attachments/assets/fb0170f2-2166-4aee-98a5-1fa6cf3616f0)

The cript will perform a backup of the source dir at the destination dir, It generates a timestamp backup name. If the compress option is used, the dir is backed up in a .tar.gz file using tar . If not used, it copies the source dir to the new dir. Logs are updated 
at each step whether success or failure. There is also a cleanup fucntion that will remove any bacup files after 7 days .

# ------------------------------------------------------------------------------

# TASK 6 : BUILDING A JAVA APP

![image](https://github.com/user-attachments/assets/61e21a63-88ae-45f7-b626-b811c2dc833f)
![image](https://github.com/user-attachments/assets/6286c80a-70c0-4722-a1f8-237010490185)

Certain tools have been implemented to build the java app , Such as jdk 17 and Maven 3.9.9 .

![image](https://github.com/user-attachments/assets/539093d8-945b-42d7-b586-6e8ceed20cac)
![image](https://github.com/user-attachments/assets/8fe972db-3868-4587-9957-eb2cef48193c)

This Jenkins pipeline is designed to build, test, and deliver a project using Maven and Java. It is triggered by githubPush() and supports parameters. The pipeline checks out code from the repository https://github.com/Syndrizzle/devops-stuff.git , defaulting to the main branch. The command mvn clean package -DskipTests compiles the code and packages it into a .jar file. Upon successful build, the deliver.sh script is executed to deploy the application.

![image](https://github.com/user-attachments/assets/5565df74-d901-40f7-925b-27d0fd735856)



















