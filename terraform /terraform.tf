{
  "version": 4,
  "terraform_version": "1.5.0",
  "serial": 15,
  "lineage": "51ca8d80-b7c0-1928-1ace-a1e4ed1ba2d6",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "aws_instance",
      "name": "web",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 2,
          "attributes": {
            "ami": "ami-020cba7c55df1f615",
            "arn": "arn:aws:ec2:us-east-1:992382386160:instance/i-01ac8ed6ec06a9ecc",
            "associate_public_ip_address": true,
            "availability_zone": "us-east-1a",
            "capacity_reservation_specification": [
              {
                "capacity_reservation_preference": "open",
                "capacity_reservation_target": []
              }
            ],
            "cpu_options": [
              {
                "amd_sev_snp": "",
                "core_count": 1,
                "threads_per_core": 1
              }
            ],
            "credit_specification": [
              {
                "cpu_credits": "standard"
              }
            ],
            "disable_api_stop": false,
            "disable_api_termination": false,
            "ebs_block_device": [],
            "ebs_optimized": false,
            "enable_primary_ipv6": null,
            "enclave_options": [
              {
                "enabled": false
              }
            ],
            "ephemeral_block_device": [],
            "get_password_data": false,
            "hibernation": false,
            "host_id": "",
            "host_resource_group_arn": null,
            "iam_instance_profile": "",
            "id": "i-01ac8ed6ec06a9ecc",
            "instance_initiated_shutdown_behavior": "stop",
            "instance_lifecycle": "",
            "instance_market_options": [],
            "instance_state": "running",
            "instance_type": "t2.micro",
            "ipv6_address_count": 0,
            "ipv6_addresses": [],
            "key_name": "",
            "launch_template": [],
            "maintenance_options": [
              {
                "auto_recovery": "default"
              }
            ],
            "metadata_options": [
              {
                "http_endpoint": "enabled",
                "http_protocol_ipv6": "disabled",
                "http_put_response_hop_limit": 2,
                "http_tokens": "required",
                "instance_metadata_tags": "disabled"
              }
            ],
            "monitoring": false,
            "network_interface": [],
            "outpost_arn": "",
            "password_data": "",
            "placement_group": "",
            "placement_partition_number": 0,
            "primary_network_interface_id": "eni-0700a5b4fb7f56d7f",
            "private_dns": "ip-10-0-1-211.ec2.internal",
            "private_dns_name_options": [
              {
                "enable_resource_name_dns_a_record": false,
                "enable_resource_name_dns_aaaa_record": false,
                "hostname_type": "ip-name"
              }
            ],
            "private_ip": "10.0.1.211",
            "public_dns": "",
            "public_ip": "34.227.227.243",
            "region": "us-east-1",
            "root_block_device": [
              {
                "delete_on_termination": true,
                "device_name": "/dev/sda1",
                "encrypted": false,
                "iops": 3000,
                "kms_key_id": "",
                "tags": {},
                "tags_all": {},
                "throughput": 125,
                "volume_id": "vol-0a9cbc9f3ba7e8db4",
                "volume_size": 8,
                "volume_type": "gp3"
              }
            ],
            "secondary_private_ips": [],
            "security_groups": [],
            "source_dest_check": true,
            "spot_instance_request_id": "",
            "subnet_id": "subnet-0297242e3d2b59179",
            "tags": {
              "Name": "myweb1"
            },
            "tags_all": {
              "Name": "myweb1"
            },
            "tenancy": "default",
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null,
            "user_data_replace_on_change": false,
            "volume_tags": null,
            "vpc_security_group_ids": [
              "sg-0d107f72864b2c95c"
            ]
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMCwicmVhZCI6OTAwMDAwMDAwMDAwLCJ1cGRhdGUiOjYwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMiJ9",
          "dependencies": [
            "aws_security_group.web_sg",
            "aws_subnet.public_subnet1",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_instance",
      "name": "web1",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 2,
          "attributes": {
            "ami": "ami-020cba7c55df1f615",
            "arn": "arn:aws:ec2:us-east-1:992382386160:instance/i-0be7b7c62f742c6e2",
            "associate_public_ip_address": true,
            "availability_zone": "us-east-1b",
            "capacity_reservation_specification": [
              {
                "capacity_reservation_preference": "open",
                "capacity_reservation_target": []
              }
            ],
            "cpu_options": [
              {
                "amd_sev_snp": "",
                "core_count": 1,
                "threads_per_core": 1
              }
            ],
            "credit_specification": [
              {
                "cpu_credits": "standard"
              }
            ],
            "disable_api_stop": false,
            "disable_api_termination": false,
            "ebs_block_device": [],
            "ebs_optimized": false,
            "enable_primary_ipv6": null,
            "enclave_options": [
              {
                "enabled": false
              }
            ],
            "ephemeral_block_device": [],
            "get_password_data": false,
            "hibernation": false,
            "host_id": "",
            "host_resource_group_arn": null,
            "iam_instance_profile": "",
            "id": "i-0be7b7c62f742c6e2",
            "instance_initiated_shutdown_behavior": "stop",
            "instance_lifecycle": "",
            "instance_market_options": [],
            "instance_state": "running",
            "instance_type": "t2.micro",
            "ipv6_address_count": 0,
            "ipv6_addresses": [],
            "key_name": "",
            "launch_template": [],
            "maintenance_options": [
              {
                "auto_recovery": "default"
              }
            ],
            "metadata_options": [
              {
                "http_endpoint": "enabled",
                "http_protocol_ipv6": "disabled",
                "http_put_response_hop_limit": 2,
                "http_tokens": "required",
                "instance_metadata_tags": "disabled"
              }
            ],
            "monitoring": false,
            "network_interface": [],
            "outpost_arn": "",
            "password_data": "",
            "placement_group": "",
            "placement_partition_number": 0,
            "primary_network_interface_id": "eni-05d92912e50682bcd",
            "private_dns": "ip-10-0-2-253.ec2.internal",
            "private_dns_name_options": [
              {
                "enable_resource_name_dns_a_record": false,
                "enable_resource_name_dns_aaaa_record": false,
                "hostname_type": "ip-name"
              }
            ],
            "private_ip": "10.0.2.253",
            "public_dns": "",
            "public_ip": "100.24.51.204",
            "region": "us-east-1",
            "root_block_device": [
              {
                "delete_on_termination": true,
                "device_name": "/dev/sda1",
                "encrypted": false,
                "iops": 3000,
                "kms_key_id": "",
                "tags": {},
                "tags_all": {},
                "throughput": 125,
                "volume_id": "vol-0279826740fe08598",
                "volume_size": 8,
                "volume_type": "gp3"
              }
            ],
            "secondary_private_ips": [],
            "security_groups": [],
            "source_dest_check": true,
            "spot_instance_request_id": "",
            "subnet_id": "subnet-0be1ceef3323aa906",
            "tags": {
              "Name": "myweb2"
            },
            "tags_all": {
              "Name": "myweb2"
            },
            "tenancy": "default",
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null,
            "user_data_replace_on_change": false,
            "volume_tags": null,
            "vpc_security_group_ids": [
              "sg-0d107f72864b2c95c"
            ]
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMCwicmVhZCI6OTAwMDAwMDAwMDAwLCJ1cGRhdGUiOjYwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMiJ9",
          "dependencies": [
            "aws_security_group.web_sg",
            "aws_subnet.public_subnet2",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_internet_gateway",
      "name": "igw",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:internet-gateway/igw-0fcf0ce715b935551",
            "id": "igw-0fcf0ce715b935551",
            "owner_id": "992382386160",
            "region": "us-east-1",
            "tags": {
              "Name": "my_internet_gateway"
            },
            "tags_all": {
              "Name": "my_internet_gateway"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjoxMjAwMDAwMDAwMDAwLCJkZWxldGUiOjEyMDAwMDAwMDAwMDAsInVwZGF0ZSI6MTIwMDAwMDAwMDAwMH19",
          "dependencies": [
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_route_table",
      "name": "public_rt",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:route-table/rtb-045c9c592d1a7c00c",
            "id": "rtb-045c9c592d1a7c00c",
            "owner_id": "992382386160",
            "propagating_vgws": [],
            "region": "us-east-1",
            "route": [
              {
                "carrier_gateway_id": "",
                "cidr_block": "0.0.0.0/0",
                "core_network_arn": "",
                "destination_prefix_list_id": "",
                "egress_only_gateway_id": "",
                "gateway_id": "igw-0fcf0ce715b935551",
                "ipv6_cidr_block": "",
                "local_gateway_id": "",
                "nat_gateway_id": "",
                "network_interface_id": "",
                "transit_gateway_id": "",
                "vpc_endpoint_id": "",
                "vpc_peering_connection_id": ""
              }
            ],
            "tags": {
              "Name": "public-route-table"
            },
            "tags_all": {
              "Name": "public-route-table"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjozMDAwMDAwMDAwMDAsImRlbGV0ZSI6MzAwMDAwMDAwMDAwLCJ1cGRhdGUiOjEyMDAwMDAwMDAwMH19",
          "dependencies": [
            "aws_internet_gateway.igw",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_route_table_association",
      "name": "a",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "gateway_id": "",
            "id": "rtbassoc-0021f4d16e3d90e74",
            "region": "us-east-1",
            "route_table_id": "rtb-045c9c592d1a7c00c",
            "subnet_id": "subnet-0297242e3d2b59179",
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjozMDAwMDAwMDAwMDAsImRlbGV0ZSI6MzAwMDAwMDAwMDAwLCJ1cGRhdGUiOjEyMDAwMDAwMDAwMH19",
          "dependencies": [
            "aws_internet_gateway.igw",
            "aws_route_table.public_rt",
            "aws_subnet.public_subnet1",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_route_table_association",
      "name": "b",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "gateway_id": "",
            "id": "rtbassoc-034863731c3e5d71d",
            "region": "us-east-1",
            "route_table_id": "rtb-045c9c592d1a7c00c",
            "subnet_id": "subnet-0be1ceef3323aa906",
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjozMDAwMDAwMDAwMDAsImRlbGV0ZSI6MzAwMDAwMDAwMDAwLCJ1cGRhdGUiOjEyMDAwMDAwMDAwMH19",
          "dependencies": [
            "aws_internet_gateway.igw",
            "aws_route_table.public_rt",
            "aws_subnet.public_subnet2",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_route_table_association",
      "name": "c",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "gateway_id": "",
            "id": "rtbassoc-02d1c06b6897af133",
            "region": "us-east-1",
            "route_table_id": "rtb-045c9c592d1a7c00c",
            "subnet_id": "subnet-0fb3205495e10aaa5",
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjozMDAwMDAwMDAwMDAsImRlbGV0ZSI6MzAwMDAwMDAwMDAwLCJ1cGRhdGUiOjEyMDAwMDAwMDAwMH19",
          "dependencies": [
            "aws_internet_gateway.igw",
            "aws_route_table.public_rt",
            "aws_subnet.private_subnet1",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_route_table_association",
      "name": "d",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "gateway_id": "",
            "id": "rtbassoc-04a3ec401f6d02dff",
            "region": "us-east-1",
            "route_table_id": "rtb-045c9c592d1a7c00c",
            "subnet_id": "subnet-0b96e4350bb76a1eb",
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjozMDAwMDAwMDAwMDAsImRlbGV0ZSI6MzAwMDAwMDAwMDAwLCJ1cGRhdGUiOjEyMDAwMDAwMDAwMH19",
          "dependencies": [
            "aws_internet_gateway.igw",
            "aws_route_table.public_rt",
            "aws_subnet.private_subnet2",
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_security_group",
      "name": "web_sg",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:security-group/sg-0d107f72864b2c95c",
            "description": "Allow HTTP and SSH",
            "egress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 0,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "-1",
                "security_groups": [],
                "self": false,
                "to_port": 0
              }
            ],
            "id": "sg-0d107f72864b2c95c",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 22,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 22
              },
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 80,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 80
              }
            ],
            "name": "web-sg",
            "name_prefix": "",
            "owner_id": "992382386160",
            "region": "us-east-1",
            "revoke_rules_on_delete": false,
            "tags": {
              "Name": "allow-web-ssh"
            },
            "tags_all": {
              "Name": "allow-web-ssh"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6OTAwMDAwMDAwMDAwfSwic2NoZW1hX3ZlcnNpb24iOiIxIn0=",
          "dependencies": [
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_subnet",
      "name": "private_subnet1",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:subnet/subnet-0fb3205495e10aaa5",
            "assign_ipv6_address_on_creation": false,
            "availability_zone": "us-east-1a",
            "availability_zone_id": "use1-az4",
            "cidr_block": "10.0.3.0/24",
            "customer_owned_ipv4_pool": "",
            "enable_dns64": false,
            "enable_lni_at_device_index": 0,
            "enable_resource_name_dns_a_record_on_launch": false,
            "enable_resource_name_dns_aaaa_record_on_launch": false,
            "id": "subnet-0fb3205495e10aaa5",
            "ipv6_cidr_block": "",
            "ipv6_cidr_block_association_id": "",
            "ipv6_native": false,
            "map_customer_owned_ip_on_launch": false,
            "map_public_ip_on_launch": false,
            "outpost_arn": "",
            "owner_id": "992382386160",
            "private_dns_hostname_type_on_launch": "ip-name",
            "region": "us-east-1",
            "tags": {
              "Name": "private_subnet1"
            },
            "tags_all": {
              "Name": "private_subnet1"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMSJ9",
          "dependencies": [
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_subnet",
      "name": "private_subnet2",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:subnet/subnet-0b96e4350bb76a1eb",
            "assign_ipv6_address_on_creation": false,
            "availability_zone": "us-east-1b",
            "availability_zone_id": "use1-az6",
            "cidr_block": "10.0.4.0/24",
            "customer_owned_ipv4_pool": "",
            "enable_dns64": false,
            "enable_lni_at_device_index": 0,
            "enable_resource_name_dns_a_record_on_launch": false,
            "enable_resource_name_dns_aaaa_record_on_launch": false,
            "id": "subnet-0b96e4350bb76a1eb",
            "ipv6_cidr_block": "",
            "ipv6_cidr_block_association_id": "",
            "ipv6_native": false,
            "map_customer_owned_ip_on_launch": false,
            "map_public_ip_on_launch": false,
            "outpost_arn": "",
            "owner_id": "992382386160",
            "private_dns_hostname_type_on_launch": "ip-name",
            "region": "us-east-1",
            "tags": {
              "Name": "private_subnet2"
            },
            "tags_all": {
              "Name": "private_subnet2"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMSJ9",
          "dependencies": [
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_subnet",
      "name": "public_subnet1",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:subnet/subnet-0297242e3d2b59179",
            "assign_ipv6_address_on_creation": false,
            "availability_zone": "us-east-1a",
            "availability_zone_id": "use1-az4",
            "cidr_block": "10.0.1.0/24",
            "customer_owned_ipv4_pool": "",
            "enable_dns64": false,
            "enable_lni_at_device_index": 0,
            "enable_resource_name_dns_a_record_on_launch": false,
            "enable_resource_name_dns_aaaa_record_on_launch": false,
            "id": "subnet-0297242e3d2b59179",
            "ipv6_cidr_block": "",
            "ipv6_cidr_block_association_id": "",
            "ipv6_native": false,
            "map_customer_owned_ip_on_launch": false,
            "map_public_ip_on_launch": true,
            "outpost_arn": "",
            "owner_id": "992382386160",
            "private_dns_hostname_type_on_launch": "ip-name",
            "region": "us-east-1",
            "tags": {
              "Name": "mypublic_subnet1"
            },
            "tags_all": {
              "Name": "mypublic_subnet1"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMSJ9",
          "dependencies": [
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_subnet",
      "name": "public_subnet2",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:subnet/subnet-0be1ceef3323aa906",
            "assign_ipv6_address_on_creation": false,
            "availability_zone": "us-east-1b",
            "availability_zone_id": "use1-az6",
            "cidr_block": "10.0.2.0/24",
            "customer_owned_ipv4_pool": "",
            "enable_dns64": false,
            "enable_lni_at_device_index": 0,
            "enable_resource_name_dns_a_record_on_launch": false,
            "enable_resource_name_dns_aaaa_record_on_launch": false,
            "id": "subnet-0be1ceef3323aa906",
            "ipv6_cidr_block": "",
            "ipv6_cidr_block_association_id": "",
            "ipv6_native": false,
            "map_customer_owned_ip_on_launch": false,
            "map_public_ip_on_launch": true,
            "outpost_arn": "",
            "owner_id": "992382386160",
            "private_dns_hostname_type_on_launch": "ip-name",
            "region": "us-east-1",
            "tags": {
              "Name": "mypublic_subnet2"
            },
            "tags_all": {
              "Name": "mypublic_subnet2"
            },
            "timeouts": null,
            "vpc_id": "vpc-075392550c6bbc75e"
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMSJ9",
          "dependencies": [
            "aws_vpc.main_vpc"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_vpc",
      "name": "main_vpc",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 1,
          "attributes": {
            "arn": "arn:aws:ec2:us-east-1:992382386160:vpc/vpc-075392550c6bbc75e",
            "assign_generated_ipv6_cidr_block": false,
            "cidr_block": "10.0.0.0/16",
            "default_network_acl_id": "acl-061d2b9c1f14d9d38",
            "default_route_table_id": "rtb-0410543d599106aca",
            "default_security_group_id": "sg-0bd31d2cd9d8f05c0",
            "dhcp_options_id": "dopt-0f07d4e8660c6a8c2",
            "enable_dns_hostnames": false,
            "enable_dns_support": true,
            "enable_network_address_usage_metrics": false,
            "id": "vpc-075392550c6bbc75e",
            "instance_tenancy": "default",
            "ipv4_ipam_pool_id": null,
            "ipv4_netmask_length": null,
            "ipv6_association_id": "",
            "ipv6_cidr_block": "",
            "ipv6_cidr_block_network_border_group": "",
            "ipv6_ipam_pool_id": "",
            "ipv6_netmask_length": 0,
            "main_route_table_id": "rtb-0410543d599106aca",
            "owner_id": "992382386160",
            "region": "us-east-1",
            "tags": {
              "Name": "my_vpc"
            },
            "tags_all": {
              "Name": "my_vpc"
            }
          },
          "sensitive_attributes": [],
          "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjEifQ=="
        }
      ]
    }
  ],
  "check_results": null
}

