output "master_public_ip" {
  description = "Public IP of the OpenNebula master"
  value       = aws_instance.opennebula_master.public_ip
}

output "slave_public_ip" {
  description = "Public IP of the OpenNebula slave"
  value       = aws_instance.opennebula_slave.public_ip
}
