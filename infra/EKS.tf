module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  depends_on = [module.vpc] // garantir que o módulo EKS seja provisionado somente após o módulo VPC estar completo.
  cluster_name    = var.cluster_name
  cluster_version = "1.30"

  cluster_endpoint_public_access = true
  cluster_endpoint_private_access = false

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets


  eks_managed_node_groups = {
    fiap_node_group = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_capacity
      instance_types = [var.node_instance_type]
    }
  }
}