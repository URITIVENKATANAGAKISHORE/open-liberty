# Open-Liberty

# A lightweight open framework for building fast and efficient cloud-native Java microservices.
Build cloud-native apps and microservices while running only what you need. Open LibertyTM is the most flexible server runtime available to JavaTM developers in this solar system.

# Develop cloud-native Java microservices
Open Liberty is fast to start up with a low memory footprint and live reload for quick iteration. Simple to add and remove features from the latest versions of MicroProfile and Jakarta EE. Zero migration lets you focus on what's important, not the APIs changing under you.

![image](https://user-images.githubusercontent.com/25504355/141348928-6eb9efcd-fe12-4b65-b6e8-c5cf946425aa.png)

# Local Build:-

1.Login to Container Registry

    Before you can pull and push images you have to create container registry . 
      1. Docker Registry
      2. Azure Container Registry
      3. Amazon Container Registry

    docker login --username <USERNAME> [--password <PASSWORD>]

    docker login <Azure Container Registry> --username <USERNAME> [--password <PASSWORD>]

    az acr login -n <Azure Container Registry>
  
2.Build Image

    You can build the images with following command in your local machine.

    docker build -t <Docker Container Registry>/open-liberty[:tag]
    docker build -t <Azure Container Registry>/open-liberty[:tag]

    If you are working under proxy, you have to add the following details in you image/container
    --build-arg http_proxy="http://${PROXY_USER}:${PROXY_PASSWD}@[DOMAIN_NAME]:[PORT_NUMBER]"
    --build-arg https_proxy="http://${PROXY_USER}:${PROXY_PASSWD}@[DOMAIN_NAME]:[PORT_NUMBER]"
  
3.Push Image  
  
    If you want to store docker images in any registry you have to follow the following commands

    docker push -t <Docker Container Registry>/open-liberty[:tag]
    docker push -t <Azure Container Registry>/open-liberty[:tag]
  
4.Pull Image

    If you want to retrivew from container registry you have to follow the following commands

    docker pull -t <Docker Container Registry>/open-liberty[:tag]
    docker pull -t <Azure Container Registry>/open-liberty[:tag]

