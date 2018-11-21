module "docker-swarm" {
  source  = "trajano/swarm-aws/docker"
  version = "1.1.0"
  
  name   = "My VPC Swarm"
  vpc_id = "${aws_vpc.main.id}"
  cloud_config_extra = "${file("users.cloud-config")}"
  exposed_security_group_ids = [
    "${aws_security_group.exposed.id}",
  ]
}