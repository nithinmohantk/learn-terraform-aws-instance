terraform {
  backend "remote" {
    organization = "ThingxCloud"

    workspaces {
      name = "development"
    }
  }
}
