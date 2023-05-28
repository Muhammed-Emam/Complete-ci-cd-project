resource "aws_iam_role" "cluster-role" {
  name = "${var.project}-cluster-Role"

  assume_role_policy = <<POLICY
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "eks.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  }
  POLICY
}

resource "aws_iam_policy_attachment" "AmazonEKSClusterPolicy" {
   name        = "example-eks-cluster-policy-attachment"
   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
   roles = [aws_iam_role.cluster-role.name]
}

resource "aws_iam_policy_attachment" "AmazonEC2ContainerRegistryReadOnly-EKS" {
   name        = "example-eks-cluster-policy-attachment"
   policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
   roles = [aws_iam_role.cluster-role.name]
}

