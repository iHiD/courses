#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-13b4af6a
aws ec2 release-address --allocation-id eipalloc-f3e2d997
aws ec2 terminate-instances --instance-ids i-05d3d65b501186c35
aws ec2 wait instance-terminated --instance-ids i-05d3d65b501186c35
aws ec2 delete-security-group --group-id sg-b96025df
aws ec2 disassociate-route-table --association-id rtbassoc-b6dbffd1
aws ec2 delete-route-table --route-table-id rtb-e2dc3685
aws ec2 detach-internet-gateway --internet-gateway-id igw-cde033a9 --vpc-id vpc-fc356c98
aws ec2 delete-internet-gateway --internet-gateway-id igw-cde033a9
aws ec2 delete-subnet --subnet-id subnet-a14c38f9
aws ec2 delete-vpc --vpc-id vpc-fc356c98
echo If you want to delete the key-pair, please do it manually.
