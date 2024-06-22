Coding Exercise for the DevOps Engineer Role

You are tasked with provisioning infrastructure via CICD pipeline for a simple web application using Terraform. The web application consists of the following components:
1.	An EC2 instance serving as the web server.
2.	An Application Load Balancer (ALB) to distribute traffic to the EC2 instance.
3.	A Security Group to control traffic to the EC2 instance.
Requirements:
1.	Use Terraform to define the infrastructure as code.
2.	Use CICD pipeline to run the Terraform tasks when the code is pushed to the Repository.
3.	Make the Terraform apply alone as a manual step.
4.	The ALB should listen on port 80 and forward traffic to the EC2 instance.
5.	The ALB should be associated with a security group that allows incoming HTTP traffic on port 80.
6.	The EC2 instance should have a security group that allows incoming SSH traffic on port 22 and incoming HTTP traffic on port 80.
Bonus: If the solution is modular and reusable.
Cloud provider: You can use any Cloud provider of your choice, GCP/AWS/Azure.
How to share the code: Apply your code to the public Github repository and have it shared.
