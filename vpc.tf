module "network" {
  source  = "app.terraform.io/RANJEET-training/network/google"
  version = "2.5.0"
  network_name = "ranjeetsingh-network"
  project_id = var.project
  # insert required variables here
  subnets = [
    {
        subnet_name   = "ranjeet-singh-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
    ]
}