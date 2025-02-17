provider "google" {}

terraform {
  backend "gcs" {
    bucket = "iac_gcp_terraform_state"  # 替换为你的 GCS 存储桶名称
    prefix = "key_pair/"                # 根据需要调整前缀
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.74.0"  # 使用适当的版本号
    }
  }
  required_version = ">= 0.14.9"
}
