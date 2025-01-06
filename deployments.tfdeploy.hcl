identity_token "test" {
  audience = ["test.workload.identity"]
}

deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 3
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 13
  }
}

publish_output "instances_single" {
  description = "number of instances"
  # assuming deployment emits an output called user
  value = deployment.single.instances
}

publish_output "instances_many" {
  description = "number of instances"
  # assuming deployment emits an output called user
  value = deployment.many.instances
}

