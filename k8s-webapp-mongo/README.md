# Kubernetes Web App with MongoDB Deployment on Azure AKS

This project deploys a web application with MongoDB database on Azure Kubernetes Service.

## Components
- MongoDB Deployment and Service (Internal)
- Web Application Deployment and Service (LoadBalancer)
- ConfigMap for database URL configuration
- Secret for MongoDB credentials (not included in repo)

## Namespace
All resources are deployed in the `webapp-mongo` namespace.

## Deployment Instructions
1. Create namespace: `kubectl create namespace webapp-mongo`
2. Create secret file (mongodb-secret.yml) with base64 encoded credentials
3. Apply configurations:
```bash
   kubectl apply -f mongodb-secret.yml
   kubectl apply -f mongodb-config.yml
   kubectl apply -f mongodb.yml
   kubectl apply -f webapp.yml
```

## Access
Access the application via LoadBalancer external IP on port 3000.