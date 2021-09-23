 
    1  sudo yum update -y
    2  sudo amazon-linux-extras install docker
    3  sudo yum install docker
    4  sudo service docker start
    5  sudo usermod -a -G docker ec2-user
    6  sudo systemctl enable docker.service
