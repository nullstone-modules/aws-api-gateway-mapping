variable "app_metadata" {
  description = <<EOF
Nullstone automatically injects metadata from the app module into this module through this variable.
This variable is a reserved variable for capabilities.
EOF

  type    = map(string)
  default = {}
}

locals {
  invoke_arn = var.app_metadata["invoke_arn"]
}

variable "paths" {
  type        = set(string)
  default     = []
  description = <<EOF
The paths to route to this application. Any requests to the API Gateway beginning with any of these paths will be routed to this application.
EOF
}

variable "endpoint_types" {
  type        = list(string)
  default     = ["EDGE"]
  description = <<EOF
A list of endpoint types to configure. Valid values that can be included in the list are "EDGE", "REGIONAL", and "PRIVATE".
EOF
}
