** AWS VPC Module ***

This moduel creates following resources, we are usign HA, we ae getting first 2 AZ automatically
VPC
Internet gateway with VPC association
2 public subnets in 1a and  1b
2 private subnets in 1a and  1b
2 database subnets in 1a and  1b
Elastic IP
NAT gateway in 1a public subnet
public route table
private route table
database route table
subnets and route table associations.
VPC peering if user requests.
Adding the peering route in default VPC, if user dont provide acceptor VPC explicitly
Adding the peering routes in public, private and database route tables. 

**** Inputs *****

project_name (Required) : your project name
environment (Required): your working environment 
vpc_cidr(optional) : default value is 10.0.0.0/16, user can override.
enable_dns_hostnames(optional) : Default value is true
common_tags (optional): Better to provide
vpc_tags (optional)
igw_tags: optional
public_subnet_cidr(Required): must provide 2 valid public subnet CIDR
private_subnet_cidr(Required): must provide 2 valid private subnet CIDR
database_subnet_cidr(Required): must provide 2 valid database subnet CIDR
nat_gateway_tags: optional
public_route_table_tags : optional
private_route_table_tags : optional
database_route_table_tags : optional
is_peering_required(optional): default to false
acceptor_vpc_id(optional)-








