variable "numerical_input" {
  type        = number
  description = "A numerical input value."

  validation {
    condition     = can(regex("^-?[0-9]+(\\.[0-9]+)?$", tostring(var.numerical_input)))
    error_message = "You must provide a numeric value (integer or float)."
  }
}