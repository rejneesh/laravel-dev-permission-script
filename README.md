# Laravel Project Permission Setup Script – Automate File Permissions for Secure Deployment in Linux

This script automates the process of setting up proper file and folder permissions for a Laravel project, ensuring secure access control for web server and user access. It checks if Laravel is installed in the directory, removes unsafe permissions, and restores appropriate access for project folders, storage, and bootstrap/cache directories. Ideal for Laravel developers working on web servers like Apache or Nginx, this script ensures a smooth and secure deployment process.

## Key Features:
<ul>
  <li><strong>Automatic Permission Setup:</strong> Automatically configures file and folder permissions for Laravel projects.</li>
  <li><strong>Security Best Practices:</strong> Prevents unauthorized access by restricting others from accessing the project folder.</li>
  <li><strong>Ownership Management:</strong> Ensures proper ownership for web server access and user permissions.</li>
  <li><strong>Easy to Use:</strong> Simple bash script that verifies Laravel installation before modifying permissions.</li>
</ul>

## Use Case:
This script is perfect for Laravel developers who need to ensure proper file permissions and ownership on their projects, especially when deploying on shared hosting or production servers. It’s designed to be used in automated deployment setups or as a quick solution for local development environments.

## Installation:
1. Copy the file to your Laravel root directory after you have installed Laravel.
2. Make the script executable with: sudo chmod +x setup-permissions.sh 
3. Run the script: sudo ./setup-permissions.sh
