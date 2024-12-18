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
