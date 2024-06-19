# Import of BTP Subaccounts

## Variant 1 - Manual import

- Configure provider to be used (including authentication information)
- Manual setup of configuration
- Resource parameters might be fed via data sources
- Import information must be staically known
- Role Collection assignments can be tricked by just applying them


## Varaint 2 - Experimental generated import

> **Note:** This is an experimental feature and may not work as expected.

```bash
terraform plan -generate-config-out=_generated_main.tf
```

## Additional Information

- Import multiple resources: [Import multiple instances with for_each](https://developer.hashicorp.com/terraform/language/import#import-multiple-instances-with-for_each)
- Conveniance see GitHub: [[FEATURE] BTP Terraform Exporter](https://github.com/SAP/terraform-provider-btp/issues/724)