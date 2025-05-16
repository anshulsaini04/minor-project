Project Overview
This project consists of a set of Bash scripts designed for managing system resources and operations. The scripts handle tasks such as user management, group management, file system management, and system performance monitoring. A Dockerfile is also included to containerize the scripts for consistent execution across environments.

Project Setup
Clone the Repository
Clone the project repository to your local machine:

git clone <repository-url>
cd <repository-folder>

Build the Docker Image
Use the provided Dockerfile to build a Docker image:

docker build -t system-management .

Run the Docker Container
Start a container from the built image:

docker run -it --rm --name system-management-container system-management

Grant Necessary Permissions
Ensure the scripts have executable permissions if running outside Docker:

chmod +x *.sh

Usage Instructions

User Management (user_script.sh)
Run the script to manage users: 

./user_script.sh

Options:
Add a user
Delete a user
List all users
Exit

Group Management (group_script.sh)
Run the script to manage groups:

./group_script.sh

Options:
Add a group
Delete a group
List all groups
Exit

File System Management (file_script.sh)
Run the script to manage the file system:

./file_script.sh

Options:
Create a directory
Set permissions
Check disk usage
Exit

System Monitoring (system_monitor.sh)
Run the script to monitor system performance:

./system_monitor.sh

Logs CPU and memory usage at regular intervals (default: 60 seconds).
Logs are saved to /var/log/system_performance.log.
Issues Encountered During Implementation
Log File Permissions

The scripts write logs to log. Ensure the user running the scripts has write permissions to this directory. If not, modify the log file paths to a directory where the user has write access.
Docker Container Permissions

Some scripts (e.g., user and group management) require elevated privileges. If running in Docker, ensure the container is started with appropriate permissions:
System-Specific Commands

Commands like groupadd, useradd, and df may behave differently on non-Linux systems. Ensure the scripts are executed on a compatible Linux distribution.
Infinite Loops in Monitoring Script

The system_monitor.sh script runs indefinitely. To stop it, use Ctrl+C.
Error Handling

Minimal error handling is implemented. For production use, consider adding more robust error checks and validations.
Future Improvements
Add unit tests for script functions.
Enhance error handling and input validation.
Provide a web-based interface for easier interaction.
Add support for non-Linux systems.