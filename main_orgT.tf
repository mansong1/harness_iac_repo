module "organization_orgt" {
  name   = "orgT"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgT"
  }
}
module "project_projectT" {
  name            = "projectT"
  organization_id = module.organization_orgt.organization_details.id
  color           = "#7eb4f2"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orgt"
  }
}
