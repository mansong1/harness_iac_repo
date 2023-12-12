module "organization" {
  name   = "orgA"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project" {
  name            = "projectA"
  organization_id = "orgA"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
