### S3 Bucket Demo
This project will create an eks cluster and will deployment a simple web application. For more details refer to this [doc](https://github.com/vikkasyousaf/eks-terraform-with-deployment/blob/master/doc/howto.md).
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.demo_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.demo_bucket_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | `"terraform-eks-demo"` | no |
| <a name="input_map_accounts"></a> [map\_accounts](#input\_map\_accounts) | Additional AWS account numbers to add to the aws-auth configmap. | `list(string)` | <pre>[<br>  "<account_id>"<br>]</pre> | no |
| <a name="input_map_users"></a> [map\_users](#input\_map\_users) | Additional IAM users to add to the aws-auth configmap. | <pre>list(object({<br>    userarn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | <pre>[<br>  {<br>    "groups": [<br>      "system:masters"<br>    ],<br>    "userarn": "arn:aws:iam::<account_id>:user/terraform-user",<br>    "username": "terraform-user"<br>  }<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"eu-central-1"` | no |

## Outputs

No outputs.
