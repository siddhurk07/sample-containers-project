# Makefile for sail portal

IMAGE_NAME=siddemo.azurecr.io/portal:latest

################################################################################
# BUILD
################################################################################
build-image : 
	docker build --rm -t $(IMAGE_NAME) -f docker/Dockerfile .

## Run the local container to local test
local-image-run :
	docker run -p 80:8080 ${IMAGE_NAME}

################################################################################
# DEPLOYMENT
################################################################################
login :
	az acr login -n siddemo

deploy-image : build-image login
	docker push $(IMAGE_NAME)

deploy-production :
	kubectl apply -f k8s/sample-app.yaml
