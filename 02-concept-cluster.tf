# resource "google_compute_address" "concept-ingress-address" {
#   name = "concept-ingress-address"
# }

# resource "google_container_cluster" "concept_cluster" {
#   name               = "concept-cluster"
#   zone               = "europe-west1-c"
#   min_master_version = "1.9.6-gke.0"
#   node_version       = "1.9.6-gke.0"
#   subnetwork         = "default"
#   initial_node_count = 1

#   node_config {
#     machine_type = "n1-standard-1"

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform",
#       "https://www.googleapis.com/auth/compute",
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }

#   ## https://github.com/terraform-providers/terraform-provider-google/pull/1245/files
#   ## just a stub to avoid the default-pool creation
#   # remove_default_node_pool = true
# }

# resource "google_container_node_pool" "cpanel-pool" {
#   name       = "cpanel-pool"
#   zone       = "europe-west1-c"
#   cluster    = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types
#     machine_type = "n1-standard-2"
#     image_type   = "UBUNTU"

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "ar-pool" {
#   name       = "ar-pool"
#   zone       = "europe-west1-c"
#   cluster    = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types
#     machine_type = "n1-standard-2"

#     image_type = "UBUNTU"

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "mmp-pool" {
#   name       = "mmp-pool"
#   zone       = "europe-west1-c"
#   cluster    = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types

#     # machine_type = "n1-highmem-32"
#     machine_type = "custom-8-102400-ext"

#     image_type = "UBUNTU"

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "cassandra-pool" {
#   name       = "cassandra-pool"
#   zone       = "europe-west1-c"
#   cluster    = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types
#     machine_type    = "n1-highmem-8"
#     local_ssd_count = 2

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "redis-pool" {
#   name       = "redis-pool"
#   zone       = "europe-west1-c"
#   cluster    = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types
#     machine_type    = "n1-standard-2"
#     local_ssd_count = 1

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "clickhouse-pool" {
#   name       = "clickhouse-pool"
#   zone       = "europe-west1-c"
#   cluster    = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types
#     machine_type    = "n1-highmem-2"
#     local_ssd_count = 1

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/devstorage.read_only",
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }

# resource "google_container_node_pool" "metrics-pool" {
#   name    = "metrics-pool"
#   zone    = "europe-west1-c"
#   cluster = "${google_container_cluster.concept_cluster.name}"
#   node_count = 0

#   node_config {
#     ## https://cloud.google.com/compute/docs/machine-types
#     machine_type    = "n1-standard-4"
#     image_type      = "UBUNTU"
#     local_ssd_count = 1

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/logging.write",
#       "https://www.googleapis.com/auth/monitoring",
#     ]
#   }
# }
