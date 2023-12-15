module "organization_orga" {
  name   = "orgA"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectA" {
  name            = "projectA"
  organization_id = "orga"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
