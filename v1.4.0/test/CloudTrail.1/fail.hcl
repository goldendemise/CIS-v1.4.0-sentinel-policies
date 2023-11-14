mock "tfplan/v2" {
  module {
    source = "../../mocks/cloudtrail-singleregion-mock-tfplan-v2.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}