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
cd blog-backend
source venv/bin/activate
sudo nano Dockerfile
sudo nano docker-compose.yml
sudo nano requirements.txt
cd
cd blog-frontend
sudo nano Dockerfile
ls
sudo nano package.json
sudo nano package-lock.json
sudo nano src/main.jsx
sudo nano src/App.jsx
sudo nano src/index.css
sudo nano src/api.js
sudo nano src/App.css
ls
sudo nano src/index.html
sudo nano index.html
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
cd
cd blog-backend
ls
cd app
ls
sudo nano main.py
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
docker compose logs blog-api
dockerlogs blog-api
docker logs blog-api
docker compose logs frontend
cd
cd blog-frontend
ls
cd src
ls
cd
cd blog-backend
ls
cd cert.pem
ls
cd 
cd blog-backend
ls
sudo nano Dockerfile
ls
sudo nano docker-compose.yml
cd
sudo nano blog-frontend/Dockerfile
cd
cd blog-backend
ls
cd
cd blog-frontend
ls
sudo nano vite.config.js
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs frontend
docker compose logs backend
docker ps
ls
cd app
ls
sudo nano auth.py
sudo nano database.py
sudo nano main.py
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
docker compose logs frontend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs frontend
docker compose logs backend
ls
sudo nano requirements.txt
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
docker ps
ls
sudo nano docker-compose.yml
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
cd
sudo nano blog-frontend/src/App.jsx
cd blog-backend
ls
cd app
ls
sudo nano main.py
cd
cd blog-frontend
ls
cd src
ls
sudo nano api.js
sudo nano main.jsx
sudo nano App.jsx
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs frontend
docker compose logs backend
ls
cd app
ls
sudo nano main.py
sudo nano schemas.py
cd
cd blog-frontend
cd src
ls
sudo nano App.jsx
docker compose down --volumes --remove-orphans
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs frontend
docker compose logs backend
docker ps
curl -X POST "http://34.28.37.200:8000/posts/" -H "Content-Type: application/json" -H "Authorization: Bearer <tu_token_jwt>" -d '{"title": "Nuevo Post", "content": "Contenido del post", "author_id": 1}'
curl -X POST "http://34.28.37.200:8000/posts/" -H "Content-Type: application/json" -H "Authorization: Bearer <tu_token_jwt>" -d '{"title": "Nuevo Post", "content": "Contenido del post", "author_id": 1}'
compose down --volumes --remove-orphans
docker compose down --volumes --remove-orphans
cd
git add .
git commit -m "Conexión back y front"
git remote set-url origin https://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@github.com/MariaLuisaR/BlogCloud.git
git push -u origin master
git init
git add .
git commit -m "Conexión back y front"
git remote set-url origin https://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@github.com/MariaLuisaR/BlogCloud.git
git push -u origin master
git add .
git commit -m "Conexión back y front"
git push
git rev-list --objects --all | grep blobid
git add .
git commit -m "backfront"
git remote set-url origin https://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@github.com/MariaLuisaR/BlogCloud.git
git push
git add .
git commit -m "backfront"
git remote set-url origin https://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@github.com/MariaLuisaR/BlogCloud.git
git push
cd blog-backend
docker compose down --volumes --remove-orphans
cd
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose down --volumes --remove-orphans
cd
git push
git push --force
git push https://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@github.com/MariaLuisaR/BlogCloud.git --force
cd blog-backend
sudo nano app/database.py
sudo nano app/models.py
sudo nano app/schemas.py
sudo nano app/models.py
sudo nano app/crud.py
sudo nano app/auth.py
cd blog-backend
source venv/bin/activate
sudo nano app/crud.py
sudo nano app/auth.py
sudo nano app/main.py
cd
cd blog-frontend
sudo nano src/App.jsx
sudo nano Dockerfile
cd
sudo nano blog-backend/Dockerfile
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
ls
sudo nano docker-compose.yml
cd
cd blog-front-end
cd blog-frontend
sudo nano Dockerfile
cd
cd blog-backend
sudo nano Dockerfile
cd
cd blog-frontend
ls
sudo nano src/App.jsx
cd
cd blog-backend
ls
sudo nano app/main.py
sudo nano app/auth.py
sudo nano app/crud.py
sudo nano app/schemas.py
sudo nano app/models.py
sudo nano app/database.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs blog-api
docker compose logs blog-db
docker compose blog-api logs
docker compose logs
docker compose logs blog-api
docker-compose logs backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
cd
cd blog-backend
ls
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
cd
cd blog-frontend
ls
cd
cd blog-backend
ls
sudo nano requirements.txt
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
ls
cd app
sudo nano main.py
sudo nano models.py
ssudo nano shcemas.py
sudo nano schemas.py
cd routes
ls
sudo nano tags.py 
sudo nano posts.py
cd
cd blog-backend/app
ls
sudo nano main.oy
sudo nano main.py
sudo nano database.py
sudo nano models.py
sudo nano schemas.py
sudo nano auth.py
cd routes
ls
sudo nano routes.py
sudo nano users.py
sudo nano posts.py
sudo nano ratings.py
sudo nano tags.py
cd
cd blog-frontend
cd src
sudo nano main.jsx
sudo nano api.js
ls
sudo nano pages/Home.jsx
cd pages
mkdir pages
ls
sudo nano pages/Home.jsx
sudo nano pages/Login.jsx
sudo nano pages/Register.jsx
sudo nano pages/CreatePost.jsx
sudo nano pages/PostDetail.jsx
ls
cd pages
ls
cd
cd blog-frontend/src
sudo nano index.css
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
cd
cd blog-frontend
ls
sudo nano package-lock.json
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose down --volumes --remove-orphans
docker compose run --rm frontend npm install
docker compose up -d --build
docker compose run --rm frontend npm list react-router-dom
cd
cd blog-frontend
docker compose run --rm frontend npm list react-router-dom
docker compose run --rm frontend npm install
ls
sudo nano package-lock.json
sudo nano package.json
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
cd
cd blog-backend
ls
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/models.py
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/main.py
sudo nano models.py
sudo nano app/models.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose backend
docker compose logs backend
cd
cd blog-backend
ls
cd app
ls
sudo nano main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker system prune -a
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
cd blog-backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/main.py
sudo nano app/routes/users.py
cd app/routes
ls
sudo nano crud.py
lscd
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker ps 
docker compose logs backned
docker compose logs backend
cd app/routes
ls
sudo nano crud.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
rah
docker compose logs backend
sudo nano users.py
ls
cd
cd blog-backend/app
ls
sudo nano routes/users.py
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
sudo nano app/auth.py
cd app
ls
sudo nano auth.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
ls
sudo nano routes/users.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
ls
sudo nano crud.py
sudo nano routes/posts.py
cd routes
ls
sudo nano ratings.py
sudo nano tags.py
sudo nano users.py
rm crud.py
ls
cd 
cd blog-backend/app
ls
cd
cd blogbackend
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
docker ps
sudo nano app/main.py
cd
cd blog-fronted
cd blog-frontend
ls
sudo nano src/api.js
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
cd
cd blog-frontend
ls
cd src
ls
cd pages
ls
sudo nano Home.jsx
sudo nano Dashboard.jsx
cd
cd blog-frontend/src
ls
sudo nano main.jsx
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
sudo nano app/main.py
sudo nano app/models.py
sudo nano app/schemas.py
sudo nano app/routes/users.pt
sudo nano app/routes/users.py
sudo nano app/crud.py
cd
sudo nano blog-frontend/src/pages/Register.jsx
cd blog-backend
sudo nano app/models.py
sudo nano app/schemas.py
sudo nano app/routes/posts.py
cd
sudo nano blog-frontend/src/pages/PostDetail.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/routes/posts.py
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
sudo nano app/main.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
sudo nano app/crud.py
cd app
ls
sudo nano crud.py
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "123456"}'
docker compose down --volumes --remove-orphans
docker compose run --rm backend pip uninstall bcrypt -y
docker compose run --rm backend pip install bcrypt==4.0.1
docker compose up -d --build
cd
sudo nano blog-frontend/src/pages/Login.jsx
sudo nano blog-frontend/src/pages/Register.jsx
sudo nano blog-frontend/src/pages/Login.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
cd
cd blog-frontend/src/pages/Login.jsx
sudo nano blog-frontend/src/pages/Login.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose login backend
docker compose logs backend
sudo nano api/crud.py
sudo nano app/crud.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
docker compose down
docker compose run --rm backend pip uninstall bcrypt -y
docker compose run --rm backend pip install bcrypt==4.0.1 passlib[bcrypt]
docker compose up -d --build
sudo nano app/auth.py
sudo nano app/crud.py
sudo nano app/auth.py
docker compose down
docker compose up -d --build
docker ps
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=tuemail@example.com&password=123456"
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "123456"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=123456"
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/users.py
sudo nano app/auth.py
sudo nano app/crud.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd 
sudo nano blog-frontend/src/pages/CreatePost.jsx
sudo nano blog-backend/app/schemas.py
sudo nano blog-backend/app/routes/posts.py
docker compose down --volumes --remove-orphans
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/schemas.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/routes/posts.py
docker compose down
docker compose up -d --build
docker ps
docker compose logs backend
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNTgxMzU0fQ.t5lxL27Ia9UuO8tstZpSExy6OPohdw7-fCeqiarRCJY"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bear eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNTgxNzg3fQ.3eylyMp0L3wp2RjnPKGTf498NH6Dvilrex5BjmRpQQo[B"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNTgxNzg3fQ.3eylyMp0L3wp2RjnPKGTf498NH6Dvilrex5BjmRpQQo"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNTgxNzg3fQ.3eylyMp0L3wp2RjnPKGTf498NH6Dvilrex5BjmRpQQo"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
sudo nano app/schemas.py
docker compose exec backend cat /app/app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
docker compose logs backend --follow
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/schemas.py
sudo nano app/posts.py
sudo nano app/routes/posts.py
docker compose down
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/posts.py
sudo nano app/schemas.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNTgzNjY1fQ.8RZ-LE9jSkMcAJpWXnXWrTfDLJTFcViMyhqBCwCTc-Q"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
docker compose up -d --build
docker ps
docker compose logs backend
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNjE1MDA0fQ.3-CD_WYEUmilIV96QupLCkSgxHMqy4qHVSvrNSjLiKc"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
docker compose up -d --build
docker ps
docker compose logs backend
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
docker compose down
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer TU_TOKEN_AQUI"      -d '{"title": "Post final", "content": "¡Por fin funciona!", "tags": ["victoria"]}'
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
sudo nano app/schemas.py
curl -X POST "http://34.28.37.200:8000/posts/test
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
sudo nano app/main.py
sudo nano app/routes/posts.py
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
docker compose down --volumes --remove-orphans
docker compose up -d --build
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNjE2NDc3fQ.M61MAMRT7yw_6Sor-cFHWEMiGQ9LWsJQXJuhzQZSxQs"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
docker compose logs backend
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
docker compose up -d --build
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwNjE2NzU5fQ.AYwp3FEmwMeFpK613aSxKfDKbW3xa1N-duE1mxa_NQY"      -d '{"title": "Mi post", "content": "Este es el contenido", "tags": ["react", "fastapi"]}'
sudo nano logs backend
docker compose logs backend
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
curl -X POST "http://34.28.37.200:8000/posts/"      -H "Content-Type: application/json"      -d '{"title": "Post sin auth", "content": "Probando sin autenticación", "tags": ["test"]}'
docker compose logs backend
sudo nano app/auth.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
docker compose down --volumes --remove-orphans
sudo nano app/auth.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backends
docker compose logs backend
sudo nano app/auth.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano  app/routes/posts.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/auth.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend
docker ps
docker compose logs backend
sudo nano app/routes/posts.py
curl -X GET "http://34.28.37.200:8000/posts/"
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
sudo nano app/schemas.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
sudo nano app/models.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/models.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
sudo nano app/models.py
docker compose down -v
docker compose up -d --build
docker ps
docker compose logs backend --follow
sudo nano app/routes/posts.py
cd
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/pages/PostDetail.jsx
sudo nano blog-frontend/src
cd blog-frontend/src
ls
sudo nano App.jsx
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
cd blog-frontend/src
sudo nano App.jsx
cd blog-backend
source venv/bin/activate
cd
cd blog-frontend/src/pages
sudo nano Dashboard.jsx
sudo nano PostDetail.jsx
sudo nano CreatePost.jsx
cd
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
dcoker ps
docker ps
cd
cd blog-frontend/src
sudo nano App.jsx
sudo nano pages/Dashboard.jsx
sudo nano pages/CreatePost.jsx
sudo nano pages/PostDetail.jsx
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
cd blog-frontend/src
ls
sudo nano App.jsx
cd pages
sudo nano Dashboard.jsx
sudo nano CreatePost.jsx
sudo nano PostDetail.jsx
docker compose down --volumes --remove-orphans
docker compose up -d --build
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/pages/CreatePost.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
cd
sudo nano blog-frontend/src/pages/CreatePost.jsx
docker compose down --volumes --remove-orphans
docker compose up -d --build
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
cd
sudo nano blog-frontend/src/pages/CreatePost.jsx
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/pages/CreatePost.jsx
sudo nano blog-frontend/src/pages/PostDetail.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
cd
git add .
git commit -m "create, detail & list"
git remote add origin https://github.com/MariaLuisaR/BlogCloud.git
git remote -v
git push origin main
git remote set-url origin https://<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@github.com/MariaLuisaR/BlogCloud.git
git remote set-url origin https://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@github.com/MariaLuisaR/BlogCloud.git
git push origin main
can
cd blog-backend
source venv/bin/activate
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose down --volumes --remove-orphans
cd app
sudo nano models.py
sudo nano schemas.py
sudo nano routes/posts.py
cd
cd blog-frontend/src
sudo nano pages/Dashboard.jsx
sudo nano pages/PostDetail.jsx
cd
cd blog-backend
docker compose up -d --build
docker ps
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-backend/app/routes/posts.py
sudo nano blog-frontend/src/pages/PostDetail.jsx
docker compose down --volumes --remove-orphans
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose down --volumes --remove-orphans
docker image prune -a
docker compose up -d --build
sudo docker image prune -f && sudo docker container prune -f 
docker image ls -a
docker system prune
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/pages/Dashboard.jsx
docker compose down --volumes --remove-orphans
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/pages/postDetail.jsx
sudo nano blog-frontend/src/pages/PostDetail.jsx
sudo nano blog-frontend/src/pages/Dashboard.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
docker compose down --volumes --remove-orphans
cd blog-backend
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
cd
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/pages/PostDetail.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
sudo nano blog-frontend/src/pages/PostDetail.jsx
cd
sudo nano blog-frontend/src/pages/PostDetail.jsx
sudo nano blog-frontend/src/pages/Dashboard.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
docker compose down --volumes --remove-orphans
sudo nano app/routes/posts.py
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/pages/PostDetail.jsx
sudo nano blog-frontend/src/pages/CreatePost.jsx
sudo nano blog-frontend/src/App.css
sudo nano blog-backend/app/routes/users.py
sudo nano blog-backend/app/routes/crud.py
sudo nano blog-backend/app/crud.py
sudo nano blog-backend/app/auth.py
sudo nano blog-backend/app/routes/tags.py
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/routes/users.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/App.jsx
sudo nano blog-backend/app/routes/posts.py
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/pages/PostDetail.jsx
sudo nano blog-frontend/src/App.css
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano blog-frontend/src/pages/Dashboard.jsx
cd
sudo nano blog-frontend/src/pages/Dashboard.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/pages/Dashboard
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/pages/Dashboard.jsx
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/users.py
sudo nano app/auth.py
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/api.js
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
curl -X POST "http://34.28.37.200:8000/users/login" -H "Content-Type: application/x-www-form-urlencoded" -d "username=user@example.com&password=password"
docker ps
docker compose logs backend
sudo nano app/auth.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/users.py
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
sudo nano app/routes/users.py
sudo nano app/auth.py
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/api.js
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/login" -H "Content-Type: application/x-www-form-urlencoded" -d "username=user@example.com&password=password"
curl -X POST "http://34.28.37.200:8000/users/login" -H "Content-Type: application/x-www-form-urlencoded" -d "username=a@a.com&password=a"
cd
sudo nano blog-frontend/src/App.jsx
sudo nano log-backend/app/main.py
sudo nano blog-backend/app/main.py
cd blog-backend
curl -X GET "http://34.28.37.200:8000/users/me" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJiQGIuY29tIiwiZXhwIjoxNzQwOTU3MDUxfQ.OX3qMA2xwtMCe3jLWu156EnJBhhr6-oCS8nsjtrqh60"
sudo nano app/routes/users.py
docker compose down
docker compose up -d --build
docker ps
docker compose logs backend
sudo nano app/routes/users.py
docker compose down
docker compose up -d --build
docker ps
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X GET "http://34.28.37.200:8000/users/me" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwOTU3OTI3fQ.UuEMum_rEXxmhPyMB9J5QSw_DUSVBftcQs4eSTbhY6c"
cd
sudo nano blog-frontend/src/App.jsx
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
curl -X POST "http://34.28.37.200:8000/users/register"      -H "Content-Type: application/json"      -d '{"name": "Prueba", "email": "prueba@email.com", "password": "12345"}'
curl -X POST "http://34.28.37.200:8000/users/login"      -H "Content-Type: application/x-www-form-urlencoded"      -d "username=prueba@email.com&password=12345"
curl -X GET "http://34.28.37.200:8000/users/me" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJwcnVlYmFAZW1haWwuY29tIiwiZXhwIjoxNzQwOTU4NDQwfQ.iJvUgommEYGCzCwF6KEHIlosdtITLiVlwIFcPvAFdOs"
docker compose lgos frontend
docker compose logs frontend
cd blog-backend
source venv/bin/activate
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-frontend/src/api.js
sudo nano blog-frontend/src/App.jsx
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/api.js
sudo nano blog-backend/app/main.py
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/App.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker compose logs backend --follow
cd
sudo nano blog-frontend/src/App.jsx
sudo nano blog-backend/app/main.py
sudo nano blog-frontend/src/main.jsx
docker compose down --volumes --remove-orphans
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
rm -rf node_modules/.vite
npm install
cd
cd blog-frontend
rm -rf node_modules/.vite
npm install 
npm run dev
sudo nano src/main.jsx
cd src
ls
sudo nano main.jsx
cd
sudo nano blog-frontend/vite.config.js
npm run dev
cd blog-frontend
npm run dev
cd
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
cd
sudo nano blog-frontend/src/main.jsx
cd blog-backend
docker compose down --volumes --remove-orphans
docker compose up -d --build
docker ps
docker compose logs backend --follow
cd
cd blog-frontend
npm run build
sduo nano app/main.jsx
sudo nano app/main.jsx
sudo nano src/main.jsx
cd
cd blog-frontned
cd blog-frontend
npm run dev
cd
cd blog-backend
docker compose down --volumes --remove-orphans
cd
cd blog-frontend
npm run dev
