module "aci_forwarding_scale_policy" {
  source  = "netascode/forwarding-scale-policy/aci"
  version = ">= 0.8.0"

  name    = "HIGH-DUAL-STACK"
  profile = "high-dual-stack"
}
