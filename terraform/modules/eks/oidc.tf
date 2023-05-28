#getting the ocid cluster link that allows to create oicd that enables eks service account to create aws resource in the cluster (load balncer controller)
data "tls_certificate" "eks" {
  url = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

#create the oidc
resource "aws_iam_openid_connect_provider" "eks" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks.certificates[0].sha1_fingerprint]
  url             = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}