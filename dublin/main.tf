module "networking" {
  source         = "../modules/vpc"
  vpc_access_key = "${var.dub_vpc_access_key}"
  vpc_secret_key = "${var.dub_vpc_secret_key}"
  vpc_region     = "${var.dub_vpc_region}"
  vpc_tenancy    = "${var.dub_vpc_tenancy}"
  vpc_cidr       = "${var.dub_vpc_cidr}"
  vpc_id         = "${module.networking.vpc_id}"
  subnet_cidr    = "${var.dub_subnet_cidr}"
  subnetname     = "${var.dub_subnetname}"
  subnet_id      = "${module.networking.subnet_id}"
  igw_id         = "${module.networking.igw_id}"
  rttable_id     = "${module.networking.rttable_id}"
  rttable_cidr   = "${var.dub_rttable_cidr}"
  ami            = "${var.dub_ami}"
  secgrp_id      = "${module.networking.secgrp_id}"
  servername     = "${var.dub_servername}"
  elb_dns        = "${module.networking.elb_dns}"
  ec2instance    = "${module.networking.ec2instance}"
}
