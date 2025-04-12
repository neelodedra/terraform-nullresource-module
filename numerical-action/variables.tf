variable "numerical_input" {
  type        = number
  description = "A numerical input value."

  validation {
    condition = can(tonumber(self))
    error_message = "The 'numerical_input' value must be a number. (Module Version 2.0.0)"
  }
}