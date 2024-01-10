# OpenNebula Deployment with Terraform and Ansible

This project sets up the infrastructure required to deploy an OpenNebula cloud environment using Terraform on AWS and configures the OpenNebula master and slave nodes using Ansible.

## Prerequisites

Before you begin, ensure you have the following installed and configured:

- [Terraform](https://www.terraform.io/downloads.html) (Version x.x.x+)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) (Version x.x.x+)
- AWS CLI with Configuration (AWS Access Key, Secret Key, and appropriate permissions)
- SSH Key Pair (for secure access to your AWS EC2 instances)

## Directory Structure

.
├── README.md
├── ansible
│   ├── inventory.ini
│   ├── main.yml
│   └── roles
│       ├── opennebula-master
│       │   └── tasks
│       │       └── main.yml
│       └── opennebula-slave
│           └── tasks
│               └── main.yml
├── templates
│   ├── opennebula_master.tpl
│   └── opennebula_slave.tpl
└── terraform
    ├── main.tf
    ├── variables.tf
    ├── provider.tf
    ├── data.tf
    ├── network.tf
    ├── instances.tf
    └── outputs.tf

## Usage

### Terraform

To provision the AWS EC2 instances:

1. Navigate to the Terraform directory.
2. Initialize Terraform:

   ```sh
   terraform init
Review the planned actions:

terraform plan
Apply the Terraform scripts to start the provisioning:

terraform apply
After Terraform completes, it will output the public IP addresses of the master and slave nodes.

Ansible
To configure the OpenNebula environment:

Update ansible/inventory.ini with the public IP addresses output by Terraform.

Navigate to the Ansible directory.

Run the Ansible playbook:

ansible-playbook -i inventory.ini main.yml
Customization
You can customize the deployment by adjusting the following:

Modify the variables.tf for Terraform variable customizations.
Update the Ansible inventory and playbooks in the ansible directory as needed.
Make sure to replace the placeholder AMI and SSH Key path with your actual AMI and SSH Key.
Notes
The provided templates and configurations are a starting point and might need further customization.
Ensure to review and comply with AWS security guidelines.
The SSH Key configured in Terraform must have its public key stored in AWS and private key available locally for Ansible.

Support
Alirezalarieth@gmail.com
