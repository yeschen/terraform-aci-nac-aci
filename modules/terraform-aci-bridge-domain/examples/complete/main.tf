module "aci_bridge_domain" {
  source  = "netascode/bridge-domain/aci"
  version = ">= 0.8.0"

  tenant                     = "ABC"
  name                       = "BD1"
  alias                      = "BD1-ALIAS"
  description                = "My Description"
  arp_flooding               = true
  advertise_host_routes      = true
  ip_dataplane_learning      = false
  limit_ip_learn_to_subnets  = false
  mac                        = "11:11:11:11:11:11"
  ep_move_detection          = true
  virtual_mac                = "22:22:22:22:22:22"
  l3_multicast               = true
  multi_destination_flooding = "drop"
  unicast_routing            = false
  unknown_unicast            = "flood"
  unknown_ipv4_multicast     = "opt-flood"
  unknown_ipv6_multicast     = "opt-flood"
  vrf                        = "VRF1"
  subnets = [{
    description        = "Subnet Description"
    ip                 = "1.1.1.1/24"
    primary_ip         = true
    public             = true
    shared             = true
    igmp_querier       = true
    nd_ra_prefix       = false
    no_default_gateway = false
    tags = [
      {
        key   = "tag_key"
        value = "tag_value"
      }
    ]
  }]
  l3outs = ["L3OUT1"]
  dhcp_labels = [{
    dhcp_relay_policy  = "DHCP_RELAY_1"
    dhcp_option_policy = "DHCP_OPTION_1"
  }]
}
