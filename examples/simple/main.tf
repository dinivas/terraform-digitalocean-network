module "vpc" {
  source          = "../../"
  vpc_name        = "dinivas-vpc"
  vpc_description = "MyNetwork description"
  vpc_ip_range    = "10.10.10.0/24"
  vpc_region      = "fra1"
}
