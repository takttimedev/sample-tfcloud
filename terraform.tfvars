#variable values

security_group_ids = ["sg-0e348164d434ba41f"]
private_subnet_id="subnet-0072f5418835a2ad9"

ec2_instance = {

    name = "terraform-practice"

    instance_type="t2.micro"
}

ec2_iam_instance_role="ansiblerole-pipeline"
