resource "google_endpoints_service" "openapi_service" {
  service_name   = "hello-randomcorp.endpoints.ira-sandbox.cloud.goog"
  project        = var.project_id
  openapi_config = file("openapi_spec.yml")
}

# module "cloud_run" {
#   source  = "GoogleCloudPlatform/cloud-run/google"
#   version = "~> 0.1.1"

#   # Required variables
#   service_name           = "<SERVICE NAME>"
#   project_id             = "<PROJECT ID>"
#   location               = "<LOCATION>"
#   image                  = "gcr.io/cloudrun/hello"
# }
