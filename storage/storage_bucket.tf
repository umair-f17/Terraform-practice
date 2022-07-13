terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "umair-teo"
  region  = "us-central1"
  zone    = "us-central1-a"

}
resource "google_storage_bucket" "GCS1" {
  name                        = "umair-bucket"
  location                    = "US"
  uniform_bucket_level_access = true
  
  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type          = "SetStorageClass"
      storage_class = "CODELINE"
    }
  }
}



resource "google_storage_bucket_object" "picture" {
  name   = "butterfly01"
  source = "image.png"
  bucket = google_storage_bucket.GCS1.name
}
