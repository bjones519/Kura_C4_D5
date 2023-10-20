## Purpose
Deploy a python flask application using terraform to proivision our VPC and server infrastructure

## Steps
1. Using terraform create your infrastructure for the following resources
- 1 Virtual Private Cloud
- 2 Availability Zones
- 2 Public Subnets
- 2 EC2s
- 1 Route Table
2. Install Jenkins on one of the servers
3. Create an ssh connection between your Jenkins server and the second server by adding your public key to the `authorized_keys` file on the second server
4. Configure and login to Jenkins, create a multibranch pipeline and run the Jenkins pipeline
5. Check the application running on port 8000
![Bankappv1](screenshots/Screenshot%202023-10-13%20at%208.17.43%20PM.png)
6. Make changes to the HTML code on a second branch and run the pipeline again
![Bankappv2](screenshots/Screenshot%202023-10-13%20at%209.29.27%20PM.png)

## Systems Diagram

![Deployment5Diagram](screenshots/Screenshot%202023-10-18%20at%209.31.56%20PM.png)


## Optimization

Applications usually sit in a private subnet due to security puposes as it might not need direct access to the internet. Users requests will go through a web server and the web server will communicate twith the application server and return a response. If the application needs access to the internet it can use a NAT Gateway. The application server can be in a public subet and you can add security groups and Network ACLs to restrict traffic in and out of the subnet and server but it is recommended that the application is put in a private subnet
