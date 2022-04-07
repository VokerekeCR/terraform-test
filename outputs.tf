output "my_public_server" {
    value = aws_instance.my_public_server.*.public_ip
}