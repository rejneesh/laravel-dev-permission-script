# Laravel Development Permission Setup Script

This script automates the process of setting up proper file and folder permissions for a Laravel project in Linux. It checks if Laravel is installed in the directory, removes unsafe permissions, and restores appropriate access for project folders, storage, and bootstrap/cache directories. Its made for Laravel developers working on web servers like Apache or Nginx.

## Key Features:
<ul>
  <li><strong>Automatic Permission Setup:</strong> Automatically configures file and folder permissions for Laravel projects.</li>
  <li><strong>Security Best Practices:</strong> Prevents unauthorized access by restricting others from accessing the project folder.</li>
  <li><strong>Ownership Management:</strong> Ensures proper ownership for web server access and user permissions.</li>
  <li><strong>Easy to Use:</strong> Simple bash script that verifies Laravel installation before modifying permissions.</li>
</ul>

## Use Case:
This script is perfect for Laravel developers who need to ensure proper file permissions and ownership on their projects. It’s designed to be used in automated deployment setups or as a quick solution for local development environments.

## Installation:
1. Copy setup-permissions.sh to your Laravel root directory after you have installed Laravel.
2. Make the script executable with: sudo chmod +x set-permission.sh
3. Run the script: sudo ./set-permission.sh
