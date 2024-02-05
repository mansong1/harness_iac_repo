module "organization_orgt" {
  name   = "orgT"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgT"
  }
}
module "project_orgT" {
  name            = "orgT"
  organization_id = module.organization_orgt.organization_details.id
  color           = "#7b4131"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orgt"
  }
}
module "hello_world_template_orgT" {
  source           = "harness-community/content/harness//modules/templates"
  name             = "Welcome to Harness"
  organization_id  = module.organization_orgt.organization_details.id
  project_id       = module.project_orgT.project_details.id
  yaml_data        = "templatefile(\"$${path.module}/templates/templates/welcome-to-harness.yaml\", { REPOSITORY_NAME : \"harness_app_repo\" })"
  template_version = "v1.0.0"
  type             = "Pipeline"
  tags = {
    app = "ApplicationA"
    bu  = "orgt"
  }
}
