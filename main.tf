module "securitygroup" {
  source = "git::https://github.com/Naresh240/terraform-securitygroup-module.git?ref=master"
}


module "instance" {
  source = "git::https://github.com/Naresh240/terraform-instnace-module.git?ref=master"

  ## Define variables
  number_of_instances = var.number_of_instances
  image_id            = var.image_id
  inst_type           = var.inst_type
  sg_id               = [module.securitygroup.sg_id]

  depends_on = [
    module.securitygroup
  ]
}
