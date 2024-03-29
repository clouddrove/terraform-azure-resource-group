<!-- This file was automatically generated by the `geine`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->

<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform AZURE RESOURCE-GROUP
</h1>

<p align="center" style="font-size: 1.2rem;"> 
    Terraform module to create RESOURCE-GROUP resource on AZURE.
     </p>

<p align="center">

<a href="https://github.com/clouddrove/terraform-azure-resource-group/releases/latest">
  <img src="https://img.shields.io/github/release/clouddrove/terraform-azure-resource-group.svg" alt="Latest Release">
</a>
<a href="https://github.com/clouddrove/terraform-azure-resource-group/actions/workflows/tfsec.yml">
  <img src="https://github.com/clouddrove/terraform-azure-resource-group/actions/workflows/tfsec.yml/badge.svg" alt="tfsec">
</a>
<a href="LICENSE.md">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>


</p>
<p align="center">

<a href='https://facebook.com/sharer/sharer.php?u=https://github.com/clouddrove/terraform-azure-resource-group'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/shareArticle?mini=true&title=Terraform+AZURE+RESOURCE-GROUP&url=https://github.com/clouddrove/terraform-azure-resource-group'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>
<a href='https://twitter.com/intent/tweet/?text=Terraform+AZURE+RESOURCE-GROUP&url=https://github.com/clouddrove/terraform-azure-resource-group'>
  <img title="Share on Twitter" src="https://user-images.githubusercontent.com/50652676/62817740-4c69db00-bb59-11e9-8a79-3580fbbf6d5c.png" />
</a>

</p>
<hr>


We eat, drink, sleep and most importantly love **DevOps**. We are working towards strategies for standardizing architecture while ensuring security for the infrastructure. We are strong believer of the philosophy <b>Bigger problems are always solved by breaking them into smaller manageable problems</b>. Resonating with microservices architecture, it is considered best-practice to run database, cluster, storage in smaller <b>connected yet manageable pieces</b> within the infrastructure. 

This module is basically combination of [Terraform open source](https://www.terraform.io/) and includes automatation tests and examples. It also helps to create and improve your infrastructure with minimalistic code instead of maintaining the whole infrastructure code yourself.

We have [*fifty plus terraform modules*][terraform_modules]. A few of them are comepleted and are available for open source usage while a few others are in progress.




## Prerequisites

This module has a few dependencies: 






## Examples


**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/clouddrove/terraform-azure-resource-group/releases).


### Simple Example
Here is an example of how you can use this module in your inventory structure:
 ```hcl
    module "resource_group" {
    source      = "terraform/resource-group/azure"
    version     = "1.0.0"
    name        = "example"
    environment = "test"
    location    = "North Europe"

     #resource lock
    resource_lock_enabled = true
    lock_level            = "CanNotDelete"
   }
```






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




## Testing
In this module testing is performed with [terratest](https://github.com/gruntwork-io/terratest) and it creates a small piece of infrastructure, matches the output like ARN, ID and Tags name etc and destroy infrastructure in your AWS account. This testing is written in GO, so you need a [GO environment](https://golang.org/doc/install) in your system. 

You need to run the following command in the testing folder:
```hcl
  go test -run Test
```



## Feedback 
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/clouddrove/terraform-azure-resource-group/issues), or feel free to drop us an email at [hello@clouddrove.com](mailto:hello@clouddrove.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/clouddrove/terraform-azure-resource-group)!

## About us

At [CloudDrove][website], we offer expert guidance, implementation support and services to help organisations accelerate their journey to the cloud. Our services include docker and container orchestration, cloud migration and adoption, infrastructure automation, application modernisation and remediation, and performance engineering.

<p align="center">We are <b> The Cloud Experts!</b></p>
<hr />
<p align="center">We ❤️  <a href="https://github.com/clouddrove">Open Source</a> and you can check out <a href="https://github.com/clouddrove">our other modules</a> to get help with your new Cloud ideas.</p>

  [website]: https://clouddrove.com
  [github]: https://github.com/clouddrove
  [linkedin]: https://cpco.io/linkedin
  [twitter]: https://twitter.com/clouddrove/
  [email]: https://clouddrove.com/contact-us.html
  [terraform_modules]: https://github.com/clouddrove?utf8=%E2%9C%93&q=terraform-&type=&language=
