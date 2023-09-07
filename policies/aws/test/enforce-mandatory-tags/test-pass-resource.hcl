# Results
test {
  rules = {
    main = true
  }
}

# Mocks
mock "tfplan/v2" {
  module {
    source = "mock-tfplan-pass-resource.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig.sentinel"
  }
}

# Functions
mock "tfplan-functions" {
  module {
    source = "../../../../functions/tfplan-functions.sentinel"
  }
}

mock "tfconfig-functions" {
  module {
    source = "../../../../functions/tfconfig-functions.sentinel"
  }
}

mock "aws-functions" {
  module {
    source = "../../../../functions/aws-functions.sentinel"
  }
}
