terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
    project = "umair-teo"
    region = "us-central1"
    zone = "us-central1a"
  
}
resource "google_storage_bucket" "GCSI" {
  name          = "umair-bucket"
  force_destroy = true

}