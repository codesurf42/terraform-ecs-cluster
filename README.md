# Terraform ECS Cluster

This repository contains `Terraform` configuration files to create AWS Elastic Container Service Cluster and deploy an example docker image on it. 

## You can run only parts of this setup

* Configure a new VPC.

```
terraform apply -target=module.vpc
```

* Configure a new ECS Cluster with a service.

```
terraform apply -target=module.ecs
```

* Configure the auto scaling group and launch configuration via EC2.

```
terraform apply -target=module.ec2
```