# Numerical Action Module (Version 2.0.0)

This module utilizes a `null_resource` to trigger a local command that echoes a numerical input value. It enforces that the provided input is a number through validation.

## Usage

This module is designed to demonstrate the handling of numerical input within a reusable Terraform component. You can include it in your Terraform configurations as a module.

```terraform
module "numerical_processor" {
  source  = "neelodedra/module/nullresource" # Replace with the actual source (e.g., local path, Git URL, Registry address)
  version = "2.0.0"

  numerical_input = 12345
}

output "processed_value" {
  value = module.numerical_processor.received_number
}