# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "one" {
  variables = {
    prefix    = "complex"
    instances = 3
  }
}

deployment "two" {
  variables = {
    prefix    = "simple"
    instances = 8
  }
}

publish_output "one" {
  description = "The prefix for deployment one"
  value       = deployment.one.outputs.prefix
}
