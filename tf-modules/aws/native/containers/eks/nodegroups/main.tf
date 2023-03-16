resource "aws_launch_template" "eks_nodegroup_launch_template" {
  name = "${local.name_prefix}-eks-ng"

  instance_type = var.instance_type

  block_device_mappings {
    device_name = "/dev/sdf"
    ebs {
      volume_size = var.root_volume_size
    }
  }

  key_name = local.ec2_ssh_key

  vpc_security_group_ids = flatten([var.security_group_ids])

  tag_specifications {
    resource_type = "instance"

    tags = merge(local.tags, {
      Name = "nodes.${var.cluster_name}-eks-${var.nodegroup_name}"
    })
  }

  tags = merge(local.tags, {
    Name = "${local.name_prefix}-eks-ng"
  })
}

resource "aws_eks_node_group" "nodegroup" {
  cluster_name    = var.cluster_name
  node_group_name = var.nodegroup_name
  node_role_arn   = aws_iam_role.eks_node_group_role.arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    min_size     = var.min_size
    max_size     = var.max_size
    desired_size = var.desired_size
  }

  launch_template {
    id      = aws_launch_template.eks_nodegroup_launch_template.id
    version = "$Latest"
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node_policy,
    aws_iam_role_policy_attachment.eks_cni_policy,
    aws_iam_role_policy_attachment.container_registry_policy,
  ]

  tags = merge(local.tags, {
    Name = var.nodegroup_name
  })
}

