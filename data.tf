# data "aws_availability_zones" "available" {
#   state = "available" # Filters to only include Availability Zones that are in an 'available' state
# }

data "aws_availability_zones" "azs" {

  #all_availability_zones = true
  state = "available"
}

data "aws_vpc" "default_vpc" {
  default = true
}

data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default_vpc.id
  filter {
    name = "association.main"
    values = ["true"]
  }
}

