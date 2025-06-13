resource "aws_vpc" "main_vpc" {
  cidr_block = var.aws_vpc

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = format("%s%s", var.region, "a")
  map_public_ip_on_launch = true

  tags = { Name = "mypublic_subnet1" }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = format("%s%s", var.region, "b")
  map_public_ip_on_launch = true

  tags = { Name = "mypublic_subnet2" }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = format("%s%s", var.region, "a")
  map_public_ip_on_launch = false

  tags = { Name = "private_subnet1" }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = format("%s%s", var.region, "b")
  map_public_ip_on_launch = false

  tags = { Name = "private_subnet2" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = { Name = "my_internet_gateway" }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = { Name = "public-route-table" }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow HTTP and SSH"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "allow-web-ssh" }
}

resource "aws_instance" "web" {
  ami                    = "ami-020cba7c55df1f615"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name = 

  tags = { Name = "myweb1" }
}

resource "aws_instance" "web1" {
  ami                    = "ami-020cba7c55df1f615"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet2.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = { Name = "myweb2" }
}
