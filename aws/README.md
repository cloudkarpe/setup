# Cloud 9

### To create an AWS Cloud9 EC2 development environment


```
aws cloud9 create-environment-ec2 --name my-demo-env --description "My demonstration development environment." --instance-type t2.micro --subnet-id subnet-1fab8aEX --automatic-stop-time-minutes 60 --owner-arn arn:aws:iam::123456789012:user/MyDemoUser
```

## To delete an AWS Cloud9 development environment

```
aws cloud9 delete-environment --environment-id 8a34f51ce1e04a08882f1e811bd706EX
```

### To get status information for an AWS Cloud9 development environment

```
aws cloud9 describe-environment-status --environment-id 685f892f431b45c2b28cb69eadcdb0EX
```

### To get information about AWS Cloud9 development environments

```
aws cloud9 describe-environments --environment-ids 685f892f431b45c2b28cb69eadcdb0EX
```

Source: https://docs.aws.amazon.com/cli/latest/reference/cloud9/index.html

