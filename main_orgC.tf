module "organization_orgc" {
  name   = "orgC"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectC" {
  name            = "projectC"
  organization_id = "orgc"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
