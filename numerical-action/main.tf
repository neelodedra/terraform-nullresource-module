resource "null_resource" "numerical_action" {
  triggers = {
    numerical_input = tostring(var.numerical_input)
  }

  /*provisioner "local-exec" {
    command     = "echo 'Currently using module version 2.0.0' && echo 'Numerical input received: ${var.numerical_input}'"
    working_dir = path.module
  }*/
}