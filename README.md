# aws_key_pair_auto

Let Terraform generate a new SSH key-pair and register with AWS.

The private key will be stored in the terraform state and can be used by the
provider connections.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| key_name | Name of the SSH aws_key_pair | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| key_name |  |
| private_key |  |
| public_key |  |

