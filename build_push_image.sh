# membuat Image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar Image lokal
docker images

# Menyesuaikan format nama image
docker tag item-app:v1 ghcr.io/vans-id/item-app:v1

# Login Github Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u vans-id --password-stdin

# Upload Image
docker push ghcr.io/vans-id/item-app:v1