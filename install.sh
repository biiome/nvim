#!/bin/bash
# Define colours 
RED='\033[0;31m'
WHITE='\033[0;37m'
GREEN='\033[0;32m'
NC='\033[0m' # No Colour

# Check if Git is installed 
if ! command -v git &> /dev/null
then
  echo -e "${RED}[ERROR]${NC} => Git could not be found. Install git before this."
  exit
fi

# Backup Operation
echo -e "${GREEN}-==Backup Operations==-${NC}"
# Ask user if they want to create a backup 
read -p "Do you want to create a backup of your current nvim config? (yes/no) " response
case "$response" in 
  [yY][eE][sS][yY]
    # Chceck if the backup directory exists 
    if [ ! -d ~/.config/nvim-backup ]; then 
      mkdir ~/.config/nvim-backup
    fi
    # Create a timestamped backup of the nvim directory 
    timestamp=$(date + %Y%m%d-%H%M%S)
    mv ~/.config/nvim/ ~/.config/nvim-backup/$timestamp
    ;;
  *)
    echo -e "${WHITE}Skipping backup...${NC}"
    ;;
esac

# Copying Files 
echo -e "${GREEN}-==Copying Files==-${NC}"

if [ ! -d ~/.config/nvim/ ]; then 
  mkdir ~/.config/nvim 
else
  echo -e "${GREEN}-==Copying Files==-${NC}"
  rsync -av --exclude='install.sh' . ~/.config/nvim/

# Delete the directory 
echo -e "${GREEN}-==Removing necessary files==-${NC}"
rm -rf ../nvim
