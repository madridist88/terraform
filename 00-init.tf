provider "google" {
  credentials = "${file("666409a46a06.json")}"
  project     = "development"
  region      = "europe-west1"
  version     = "~> 1.1"
}
