# Terraform Infrastructure As a Code - Refresher 

## Introduction


## Getting Started 

### Download Terraform 
https://www.terraform.io/downloads.html


### Useful Commands
```terrafrom init```

```terraform plan```

```terraform apply```

```terraform destroy```

```terraform destroy --target={instanceId_here}```

```terraform show```

```terraform state list```

Command to test the validity of your configuration:
```terraform validate```

Terraform will attempt when it comes to provision the infrastructure according to your configuration:
```terraform plan -var-file="definitions.tfvars"```

Execute the plan by running terraform apply:
```terraform apply -var-file="definitions.tfvars"```

```terraform apply -var 'amis={ us-east-1 = "foo", us-west-2 = "bar" }'    ```
```terraform apply -var region=us-west-2```


