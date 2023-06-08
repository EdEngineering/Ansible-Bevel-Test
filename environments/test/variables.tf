variable "project" {
  type        = string
  description = "Google Cloud Platform Project ID"
  default     = "ansible-bevel-test"
}

variable "name" {
  default = "bevel-test"
}

variable "region" {
  type        = string
  description = "Infrastructure Region"
  default     = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "subnet_name" {
  type = string
  default = "subnet-01"
}

variable "ip_range_pods_name" {
  type = string
  default = "us-central1-01-gke-01-pods"
}

variable "ip_range_services_name" {
  type = string
  default = "us-central1-01-gke-01-services"
}

variable "cluster_node_zones" {
  type    = list(string)
  default = ["us-central1-a"]
}

variable "dns_name" {
  type = string
  default = "evasquezapplaudo.ga."
}

variable "org_records" {
  type = set(string)
  default = ["carrier", "store", "warehouse","manufacturer"]

}

variable "gcp_service_list" {
  description = "The list of apis necessary for the project"
  type        = list(string)
  default = [
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "dns.googleapis.com",
    "container.googleapis.com"
  ]
}