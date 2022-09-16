## The folloiwng commands should be executed separately.

# Build the production image
docker build -t Sierra1011/portwarden-server-prod:1.7.0 -f Dockerfile.Build .

# Build the development image
docker build -t Sierra1011/portwarden-server-dev:1.7.0 .

# minikube docker-env
