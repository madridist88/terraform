# resource "google_compute_address" "ci_address" {
#   name = "ci-address"
# }

# resource "google_container_cluster" "ci_cluster" {
#   name               = "ci-cluster"
#   zone               = "europe-west1-c"
#   min_master_version = "1.9.6-gke.0"
#   node_version       = "1.9.6-gke.0"
#   subnetwork         = "default"
#   initial_node_count = 1

#   node_config {
#     machine_type    = "n1-standard-2"
#     local_ssd_count = 1

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform",
#       "https://www.googleapis.com/auth/compute",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "ci-agents-pool" {
#   name    = "ci-agents-pool"
#   zone    = "europe-west1-c"
#   cluster = "${google_container_cluster.ci_cluster.name}"

#   node_count = 2

#   node_config {
#     machine_type    = "n1-standard-2"
#     image_type      = "UBUNTU"
#     local_ssd_count = 1

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform",
#       "https://www.googleapis.com/auth/compute",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_compute_disk" "ci-data" {
#   name = "ci-data"
#   type = "pd-ssd"
#   zone = "europe-west1-c"
#   size = 10
# }

# resource "google_compute_disk" "charts-data" {
#   name = "charts-data"
#   type = "pd-ssd"
#   zone = "europe-west1-c"
#   size = 2
# }
