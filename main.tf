
resource "aws_bucket" "bucket" {
  count  = var.create_bucket ? 1 : 0
  bucket = var.apt_cache_bucket
}

module "repo" {
  source = "HappyPathway/repo/github"
  name   = var.cache_name
  vars = [
    {
      name  = "ubuntu_version"
      value = var.ubuntu_version
    },
    {
      name  = "packer_version"
      value = var.packer_version
    },
    {
      name  = "apt_cache_bucket"
      value = var.apt_cache_bucket
    },
    {
      name  = "apt_cache_key"
      value = var.apt_cache_key
    }
  ]
}
