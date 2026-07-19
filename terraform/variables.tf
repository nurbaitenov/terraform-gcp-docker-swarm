variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "zone" {
  description = "GCP Zone"
  type        = string
}

variable "machine_type" {
  description = "VM Machine Type"
  type        = string
  default     = "e2-medium"
}

variable "worker_count" {
  description = "Number of worker nodes"
  type        = number
  default     = 2
}