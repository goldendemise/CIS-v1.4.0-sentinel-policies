mock "tfplan/v2" {
  module {
    source = "../../mocks/cloudtrail-multiregion-mock-tfplan-v2.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}