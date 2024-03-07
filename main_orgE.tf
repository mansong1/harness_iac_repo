module "organization_orge" {
  name   = "orgE"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgE"
  }
}
module "project_projectE" {
  name            = "projectE"
  organization_id = module.organization_orge.organization_details.id
  color           = "#ef58be"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orge"
  }
}
