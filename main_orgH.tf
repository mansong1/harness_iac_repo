module "organization_orgh" {
  name   = "orgH"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgH"
  }
}
module "project_projectH" {
  name            = "projectH"
  organization_id = module.organization_orgh.organization_details.id
  color           = "#c03116"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orgh"
  }
}
