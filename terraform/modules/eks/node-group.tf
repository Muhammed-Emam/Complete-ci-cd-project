resource "aws_eks_node_group" "worker-node-group" {
  cluster_name = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.project}-workernodes"
  node_role_arn = aws_iam_role.worker_node_role.arn
  subnet_ids = var.subnet_id_list_worker
  instance_types = var.instance_types_list

  scaling_config {
    desired_size = var.scaling_config["desired_size"]
    max_size     = var.scaling_config["max_size"]
    min_size     = var.scaling_config["min_size"]
  }

  depends_on = [ 
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.EC2InstanceProfileForImageBuilderECRContainerBuilds,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly
    
   ]
}