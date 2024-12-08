#!/bin/bash
# Make the script executable
# sudo chmod +x set-permission-dev.sh
# Run the script:
# sudo ./set-permission-dev.sh

# Check if Laravel is installed by looking for the 'artisan' file
if [ ! -f "$(pwd)/artisan" ]; then
  echo "Laravel is not installed in this directory. Aborting."
  exit 1
fi

echo "Laravel is installed. Proceeding with permission setup for laravel development..."
echo " "
# Step 1/5: Remove all permissions for the project directory
echo "Step 1/6: Removing all permissions from the project directory..."
echo "Current working directory: $(pwd)"
sudo chmod 000 $(pwd)
echo " "

# Step 2/5: Restore write permissions for the owner (you)
echo "Step 2/6: Restoring write permissions for the owner..."
echo "Owner: $(logname)"
sudo chmod u+rwx $(pwd)
echo " "

# Step 3/5: Restrict others from accessing the project folder (only owner and group have full access)
echo "Step 3/6: Restricting others from accessing the project folder..."
echo "Setting permissions to 770 on: $(pwd)"
sudo chmod 770 $(pwd)
echo " "

# Step 4/5: Change ownership to your user and the www-data group for the entire project folder
echo "Step 4/6: Changing ownership of the project folder..."
echo "Changing ownership to: $(logname):www-data"
sudo chown -R $(logname):www-data $(pwd)
echo " "

# Step 5/5: Change ownership of storage and bootstrap/cache to www-data:www-data
echo "Step 5/6: Changing ownership of storage and bootstrap/cache..."
echo "Changing ownership to: www-data:www-data for directories: $(pwd)/storage and $(pwd)/bootstrap/cache"
sudo chown -R www-data:www-data $(pwd)/storage $(pwd)/bootstrap/cache
echo " "

# Step 6/5: Set read, write, and execute permissions for owner and group on storage and bootstrap/cache
echo "Step 6/6: Setting permissions for storage and bootstrap/cache..."
echo "Setting permissions to 775 on: $(pwd)/storage and $(pwd)/bootstrap/cache"
sudo chmod -R 775 $(pwd)/storage $(pwd)/bootstrap/cache
echo " "

echo "Permission setup for Laravel development completed successfully!"
