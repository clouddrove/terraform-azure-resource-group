## Inputs



| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| business\_unit | Top-level division of your company that owns the subscription or workload that the resource belongs to. In smaller organizations, this tag might represent a single corporate or shared top-level organizational element. | `string` | `"Corp"` | no |
| create | Used when creating the Resource Group. | `string` | `"90m"` | no |
| delete | Used when deleting the Resource Group. | `string` | `"90m"` | no |
| enabled | Flag to control the module creation. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `null` | no |
| extra\_tags | Variable to pass extra tags. | `map(string)` | `null` | no |
| label\_order | Label order, e.g. `name`,`application`. | `list(string)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| location | Location where resource should be created. | `string` | `null` | no |
| lock\_level | n/a | `string` | `"CanNotDelete"` | no |
| managedby | ManagedBy, eg 'CloudDrove'. | `string` | `"hello@clouddrove.com"` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `null` | no |
| notes | Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created. | `string` | `"This Resource Group is locked by terrafrom"` | no |
| read | Used when retrieving the Resource Group. | `string` | `"5m"` | no |
| repository | Terraform current module repo | `string` | `"https://github.com/clouddrove/terraform-azure-resource-group"` | no |
| resource\_lock\_enabled | enable or disable lock resource | `bool` | `false` | no |
| update | Used when updating the Resource Group. | `string` | `"90m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group\_id | The ID of the Resource Group. |
| resource\_group\_location | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. |
| resource\_group\_name | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. |
| tags | A mapping of tags which should be assigned to the Resource Group. |

