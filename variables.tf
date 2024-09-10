# Missing Variables:  [
#     "apt_cache_bucket",
#     "apt_cache_key",
#     "cache_name",
#     "create_bucket",
#     "packer_version",
#     "ubuntu_version"
# ]
variable "apt_cache_bucket" {
  description = "The name of the apt cache bucket"
  type        = string
}

variable "apt_cache_key" {
  description = "The key for the apt cache"
  type        = string
}

variable "cache_name" {
  description = "The name of the cache"
  type        = string
}

variable "create_bucket" {
  description = "Flag to create a new bucket"
  type        = bool
}

variable "packer_version" {
  description = "The version of Packer to use"
  type        = string
}

variable "ubuntu_version" {
  description = "The version of Ubuntu to use"
  type        = string
  default     = "latest"
}
