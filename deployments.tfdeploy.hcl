identity_token "test" {
  audience = ["test.workload.identity"]
}

deployment "single" {
  inputs = {
    prefix    = "single"
    instances = 2
  }
}

deployment "many" {
  inputs = {
    prefix    = "many"
    instances = 12
  }
}

publish_output "instances" {
  description = "number of instances"
  # assuming deployment emits an output called user
  value = 8
}

