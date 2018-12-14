provider "artifactory" {
  username = "${var.artifactory_username}"
  password = "${var.artifactory_password}"
  url      = "${var.artifactory_url}"
}

resource "artifactory_local_repository" "keshav" {
  key          = "docker-local"
  package_type = "docker"

  # repository_layout_ref = "simple-default"
  docker_api_version = "V2"
  property_sets      = ["artifactory"]
}
