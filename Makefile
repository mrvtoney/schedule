# Makefile
# Replace <app-name> with your app's name
# Replace <server-ip> with your server's IP address
# Replace <image-name> with custom docker tag. 
# (<username>/<appname>) format
# Replace <container-name> with a custom name.
APP_NAME:=schedule
TARGET_DIRECTORY:=/usr/src/schedule
SERVER_IP:=127.0.0.1
IMAGE_NAME:=schedule
CONTAINER_NAME:=schedule_api
TARBALL_NAME:=bundle.tar.gz.
URL:=http://schedule.com
PORT:=3000
PHONY: build
build:=
    echo "-------------------------------------------------------"
    @echo "Creates a tarball under ./deploy"
    @echo "-------------------------------------------------------"
    @echo "Building..."
    # Remove previous build
    @rm -rf ./bundle ./deploy/$(TARBALL_NAME) 
    @meteor build . --server="$(URL)" --directory
    @cp ./deploy/Dockerfile ./bundle
    @tar -zcf ./$(TARBALL_NAME) ./bundle
    @mv ./$(TARBALL_NAME) ./deploy
    @rm -rf ./bundle
    @echo "Builded successfully!"
    @echo "(the build output tarball is ./deploy/bundle.tar.gz)".
PHONY: deploy
deploy:
    @echo "-------------------------------------------------------"
    @echo "Uploading and running app in a docker container"
    @echo "-------------------------------------------------------"
    @ssh root@$(SERVER_IP) \
        "cat > $(TARGET_DIRECTORY)/$(TARBALL_NAME) ; \
        cd $(TARGET_DIRECTORY) ; \
        tar -xzf ./$(TARBALL_NAME) ; \
        cd ./bundle ; \
        docker stop $(CONTAINER_NAME) ; \
        docker rm $(CONTAINER_NAME) ; \
        docker build --tag $(IMAGE_NAME) . ; \
        docker run -p $(PORT):80 --name $(CONTAINER_NAME) -d $(IMAGE_NAME) ; \
        " \
   < ./deploy/$(TARBALL_NAME)