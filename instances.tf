resource "aws_instance" "my_public_server" {
    count = 4
    ami = data.aws_ami.ubuntu_image.id
    instance_type = var.ec2_type
    subnet_id = data.aws_subnet.public.id
    vpc_security_group_ids = [
        aws_security_group.my_public_sg.id
    ]
    key_name = var.my_keypair

    tags = {
        Name = "ansible_public_server${count.index + 1}"
    }
}