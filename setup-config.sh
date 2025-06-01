#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Setting up Suna AI Configuration${NC}"

# Check if .env files exist, if not create from templates
if [ ! -f "backend/.env" ]; then
    echo -e "${YELLOW}Creating backend/.env from template...${NC}"
    cp backend/.env.template backend/.env
    echo "Please edit backend/.env with your configuration"
else
    echo -e "${GREEN}backend/.env already exists, skipping...${NC}"
fi

if [ ! -f "frontend/.env.local" ]; then
    echo -e "${YELLOW}Creating frontend/.env.local from template...${NC}"
    cp frontend/.env.local.template frontend/.env.local
    echo "Please edit frontend/.env.local with your configuration"
else
    echo -e "${GREEN}frontend/.env.local already exists, skipping...${NC}"
fi

if [ ! -f "docker-compose.yml" ]; then
    echo -e "${YELLOW}Creating docker-compose.yml from template...${NC}"
    cp docker-compose.template.yml docker-compose.yml
    echo "Please edit docker-compose.yml with your configuration"
else
    echo -e "${GREEN}docker-compose.yml already exists, skipping...${NC}"
fi

echo -e "\n${GREEN}✅ Setup complete!${NC}"
echo -e "\nNext steps:"
echo "1. Edit the configuration files with your API keys and settings"
echo "2. Run 'docker-compose up -d' to start the services"
echo "3. Access the application at http://localhost:3000"

# Make the script executable
chmod +x setup-config.sh
