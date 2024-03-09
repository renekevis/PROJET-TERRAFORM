provider "aws" {
    region = "us-east-1"
}

#créeation du sg
module "sg" {
    source = "../module/SG"
}

#création du volume
module "ebs" {
    source = "../module/EBS"
    disk_size = 5
}

#création de l'eip
module "eip" {
    source = "../module/EIP"
}

#creation de l'ec2
module "ec2" {
    source = "../module/EC2"
    public_ip = module.eip.output_eip_id
    sg_name = module.sg.output_sg_name
}

#création des association nécessaires
resource "aws_eip_association" "eip_asso" {
    instance_id = module.ec2.output_ec2_id.id
    allocation_id = module.eip.output_eip_id
}

resource "aws_volume_attachment" "ebs_att" {
    device_name = "/dev/sdh"
    volume_id = module.ebs.output_id_volume
    instance_id = module.ec2.output_ec2_id.id
}