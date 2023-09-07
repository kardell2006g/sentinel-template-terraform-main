#------------------------------------------------------------------------------
# Sentinel Modules (function imports)
#------------------------------------------------------------------------------
module "tfplan-functions" {
  source = "../../functions/tfplan-functions.sentinel"
}

module "aws-functions" {
  source = "../../functions/aws-functions.sentinel"
}

#------------------------------------------------------------------------------
# Sentinel Policies
#------------------------------------------------------------------------------
policy "enforce-mandatory-tags" {
  source            = "../../policies/aws/enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ec2-instance-type" {
  source            = "../../policies/aws/restrict-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}
