output "eks_cluster" {
  value = aws_eks_cluster.EKScluster
}

output "eks_node" {
  value = aws_eks_node_group.EKSnode
}