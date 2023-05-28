#controlplane
resource "aws_eks_cluster" "eks_cluster" {
  name = "${var.project}-cluster"
  role_arn = aws_iam_role.cluster-role.arn

  vpc_config {
    #subnets wich would be assciated with ENI
    subnet_ids = var.subnet_id_list_cluster
    # endpoint_private_access = true  #default false
    # endpoint_public_access  = false  #default true

  }

  depends_on = [aws_iam_role.cluster-role]
}