sudo apt update && sudo apt install -y python3 python3-pip
sudo apt update
sudo apt install -y python3 python3-pip
mkdir -p ~/blog-backend && cd ~/blog-backend
python3 -m venv venv
apt install python3.10-venv
sudo apt install python3.10-venv
apt install python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install fastapi uvicorn psycopg2-binary sqlalchemy pydantic[email]
ls
cd /venv
cd venv
ls
cd
cd blog-backend
mkdir -p app/routes
touch app/{main.py,models.py,database.py,schemas.py,crud.py,auth.py}
touch app/routes/{users.py,posts.py,tags.py,ratings.py}
touch .env Dockerfile requirements.txt docker-compose.yml
ls
cd app
ls
cd
cd blog-backend
cd venv
ls
cd
cd blog-backend
cd app
ls
sudo nano database.py
ls
sudo nano models.py
sudo nano routes/posts.py
sudo nano auth.py
cd
ls
cd blog_backend
cd blog-backend
ls
sudo nano Dockerfile
ls
sudo nano Dockerfile
sudo nano docker-compose.yml
ls
docker-compose up -d --build
ls
sudo nano requirements.txt
sudo nano Dockerfile
docker-compose build
docker-compose up -d --build
docker --version
docker-compose --version
sudo apt update
sudo apt remove docker docker-engine docker.io containerd runc
sudo apt install -y docker.io
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get remove docker-compose
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
DESTINATION=/usr/local/bin/docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
sudo chmod 755 $DESTINATION
sudo apt-get update
sudo apt-get install docker-compose-plugin
ls -l /usr/local/bin/docker-compose
sudo rm -rf docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/2.33.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -v
sudo curl -L "https://github.com/docker/compose/releases/download/v2.33.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -v
curl -L "https://github.com/docker/compose/releases/download/`curl -fsSLI -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest | sed 's#.*tag/##g' && echo`/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
sudo cd /usr/local/bin && sudo rm -rf docker-compose
compose_version=$(curl https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
output='/usr/local/bin/docker-compose'
curl -L https://github.com/docker/compose/releases/download/$compose_version/docker-compose-$(uname -s)-$(uname -m) -o $output
chmod +x $output
echo $(docker-compose --version)
sudo apt-get remove docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
docker-compose --version
ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose
pip3 install --upgrade --force-reinstall --no-cache-dir docker-compose && ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo apt-get update
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get install docker-compose-plugin
apt-get update
apt-get install docker-compose-plugin
sudo apt-get update
sudo apt-get install docker-compose-plugin
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
docker compose version
docker-compose build
docker-compose-plugin build
docker-compose build
docker compose version
docker-compose up -d --build
docker compose up -d --build
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker
docker --version
sudo apt install -y docker-compose
docker-compose --version
sudo usermod -aG docker $USER
newgrp docker
sudo apt update
source venv/bin/activate
ls
cd blog-backend
source venv/bin/activate
docker-compose --version
docker --version
docker compose --version
docker compose version
docker compose up -d --build
docker-compose down --volumes --remove-orphans
docker system prune -a
docker-compose up -d --build
docker ps
curl http://34.28.37.200:8000/docs
docker ps -a
docker-compose up backend
docker ps -a
docker logs blog-api
sudo nano app/main.py
ls
cd app
ls
cd
cd blog-backend
docker-compose down
docker-compose up -d --build
docker ps
ls
cd blog-backend
source venv/bin/activate
docker-compose down
docker-compose up -d --build
docker ps
docker-compose down
docker-compose up -d --build
docker ps
sudo apt update
sudo apt install -y nodejs npm
node -v
npm -v
npx create-vite@latest blog-frontend --template react
sudo apt remove -y nodejs npm
sudo apt autoremove -y
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
node -v
npm -v
npx create-vite@latest blog-frontend --template react
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
npx create-vite@latest blog-frontend --template react
cd blog-frontend
npm install
npm install axios react-router-dom
ls
sudo nano src/api.js
src/App.jsx
sudo nano src/App.jsx
npm run dev -- --host
ls
sudo nano vite.config.js
npm run dev
ls
cd blog-backend
cd
cd blog-backend
mv blog-frontend ../
cd
blog-frontend
cd blog-frontend
ls
sudo nano Dockerfile
cd
cd blog-backend
ls
sudo nano docker-compose.yml
docker-compose up -d --build
cd
docker-compose up -d --build
sudo nano docker-compose.yml
cd blog-backend
sudo nano docker-compose.yml
cd
docker-compose up -d --build
cd blg-backend
cd blog-backend
docker-compose up -d --build
docker compose up -d --build
cd
sudo nano blog-frontend/src/api.js
docker-compose up -d --build
cd blog-backend
docker-compose up -d --build
docker compose up -d --build
sudo nano app/main.py
docker compose up -d --build
docker ps
cd app/routes
ls
sudo nano posts.py
docker compose up -d --build
cd
cd blog-backend
source venv/bin/activate
cd
sudo nano blog-frontend/src/api.js
docker logs blog-api
sudo nano blogbackend/app/main.py
sudo nano blog-backend/app/main.py
sudo nano blog-backend/app/routes/posts.py
sudo nano blog-backend/app/main.py
docker compose down
cd blog-backend
docker compose down
docker compose up -d --build
curl -X GET http://34.28.37.200:8000/posts/
docker ps
docker compose up -d --build
docker ps
docker ps -a
docker logs blog-api

cd app
ls
sudo nano schemas.py
ls
cd
cd blog-backend
ls
sudo nano app/routes/posts.py
ls
sudo nano Dockerfile
docker-compose down --volumes --remove-orphans
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker logs blog-api
docker exec -it blog-db psql -U user -d blogdb
ls
sudo nano app/database.py
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker-compose up -d --build
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker-compose up -d --build
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker ps -a
docker logs blog-api
sudo nano app/database.py
ls
cd app
ls
cd routes
ls
cd
touch blog-backend/app/__init__.py
touch blog-backend/app/routes/__init__.py
cd blog-backend
ls
cd app
ls
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker logs blog-api
sudo nano database.py
sudo nano models.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
rm -r /path/to/directory/*
rm -r path_to_dir/*
rm -r dir
rm -r blog-backend
rm -rf *
ls
git clone https://github.com/MariaLuisaR/BlogCloud.git
ls
cd blogcloud
cd BlogCloud
mv * ../
ls
cd
ls
rm BlogCloud
rm -r
rm -d
rm -d BlogCloud
rm -rf *
ls
git init
git pull https://github.com/MariaLuisaR/BlogCloud.git
ls
god damn it
git pull https://github.com/MariaLuisaR/BlogCloud.git
rm -rf *
git clone https://github.com/MariaLuisaR/BlogCloud.git .
rm -rf *
git clone https://github.com/MariaLuisaR/BlogCloud.git .
git init
git remote set-url origin https://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@github.com/MariaLuisaR/BlogCloud.git
git pull
git checkout main -f
ls
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
cd
cd blog-backend
ls
sudo nano Dockerfile
sudo nano docker-compose.yml
sudo nano requirements.txt
cd app
ls
cd routes
ls
cd
cd blog-frontend
ls
sudo nano 
sudo nano eslint.config.js
cd vite.config.js
sudo nano vite.config.js
sudo nano index.html
cd src
ls
sudo nano App.css
sudo nano App.jsx
sudo nano api.js
sudo nano index.css
sudo nano main.jsx
cd
cd blog-bckend
cd blog-backend
docker compose down --volumes --remove-orphans
cd
cd blog-frontend
cd
cd blog-backend/app
ls
sudo nano models.py
sudo nano schemas.py
sudo nano crud.py
ls
sudo nano crud.py
sudo nano auth.py
sudo nano main.py
cd routes
ls
cd posts.py
sudo nano posts.py

sudo nano posts.py
sudo nano users.py
sudo nano tags.py
sudo nano ratings.py
cd
cd blog-frontend
ls
cd src
ls
cd
cd blog-backend
ls
cd
cd blog-frontend
ls
cd src
ls
sudo nano App.jsx
sudo nano api.js
cd
ls
cd blog-frontend
ls
sudo nano index.html
cd src
ls
sudo nano App.css
sudo nano main.jsx
cd
cd blog-frontend
ls
sudo nano vite.config.js
sudo nano eslint.config.js
cd
cd blog-backend
ls
sudo nano Dockerfile
