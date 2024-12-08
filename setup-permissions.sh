#!/bin/bash
#Make the script executable
#chmod +x setup-permissions.sh
#Run the script:
#./setup-permissions.sh

# Check if Laravel is installed by looking for the 'artisan' file
if [ ! -f "$(pwd)/artisan" ]; then
  echo "Laravel is not installed in this directory. Aborting."
  exit 1
fi

echo "Laravel is installed. Proceeding with permission setup..."

# Step 1/5: Remove all permissions for the project directory
echo "Step 1/5: Removing all permissions from the project directory..."
sudo chmod 000 $(pwd)

# Step 2/5: Restore write permissions for the owner (you)
echo "Step 2/5: Restoring write permissions for the owner..."
sudo chmod u+rwx $(pwd)

# Step 3/5: Restrict others from accessing the project folder (only owner and group have full access)
echo "Step 3/5: Restricting others from accessing the project folder..."
sudo chmod 770 $(pwd)

# Step 4/5: Change ownership to your user and the www-data group for the entire project folder
echo "Step 4/5: Changing ownership of the project folder..."
sudo chown -R $(whoami):www-data $(pwd)

# Step 5/5: Change ownership of storage and bootstrap/cache to www-data:www-data
echo "Step 5/5: Changing ownership of storage and bootstrap/cache..."
sudo chown -R www-data:www-data $(pwd)/storage $(pwd)/bootstrap/cache

# Step 6/5: Set read, write, and execute permissions for owner and group on storage and bootstrap/cache
echo "Step 6/5: Setting permissions for storage and bootstrap/cache..."
sudo chmod -R 775 $(pwd)/storage $(pwd)/bootstrap/cache

echo "Permission setup completed successfully!"
