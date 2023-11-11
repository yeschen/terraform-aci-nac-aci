module "aci_fabric_spine_switch_profile" {
  source  = "netascode/fabric-spine-switch-profile/aci"
  version = ">= 0.8.0"

  name               = "SPINE1001"
  interface_profiles = ["PROF1"]
  selectors = [{
    name         = "SEL1"
    policy_group = "POL1"
    node_blocks = [{
      name = "BLOCK1"
      from = 1001
      to   = 1001
    }]
  }]
}
