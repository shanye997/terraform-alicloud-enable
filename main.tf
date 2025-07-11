data "alicloud_event_bridge_service" "open" {
  count  = contains(keys(var.services), "alicloud_event_bridge_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_event_bridge_service", "Off")
}

data "alicloud_fnf_service" "open" {
  count  = contains(keys(var.services), "alicloud_fnf_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_fnf_service", "Off")
}

data "alicloud_pvtz_service" "open" {
  count  = contains(keys(var.services), "alicloud_pvtz_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_pvtz_service", "Off")
}

data "alicloud_api_gateway_service" "open" {
  count  = contains(keys(var.services), "alicloud_api_gateway_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_api_gateway_service", "Off")
}

data "alicloud_cdn_service" "open" {
  count                = contains(keys(var.services), "alicloud_cdn_service") ? 1 : 0
  enable               = lookup(var.services, "alicloud_cdn_service", "Off")
  internet_charge_type = var.cdn_charge_type
}

data "alicloud_cen_transit_router_service" "open" {
  count  = contains(keys(var.services), "alicloud_cen_transit_router_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_cen_transit_router_service", "Off")
}

data "alicloud_cloud_storage_gateway_service" "open" {
  count  = contains(keys(var.services), "alicloud_cloud_storage_gateway_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_cloud_storage_gateway_service", "Off")
}

data "alicloud_ack_service" "open" {
  count  = contains(keys(var.services), "alicloud_ack_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_ack_service", "Off")
  type   = var.ack_charge_type
}

data "alicloud_dcdn_service" "open" {
  count  = contains(keys(var.services), "alicloud_dcdn_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_dcdn_service", "Off")
}
data "alicloud_data_works_service" "open" {
  count  = contains(keys(var.services), "alicloud_data_works_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_data_works_service", "Off")
}

data "alicloud_fc_service" "open" {
  count  = contains(keys(var.services), "alicloud_fc_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_fc_service", "Off")
}
data "alicloud_iot_service" "open" {
  count  = contains(keys(var.services), "alicloud_iot_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_iot_service", "Off")
}
data "alicloud_kms_service" "open" {
  count  = contains(keys(var.services), "alicloud_kms_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_kms_service", "Off")
}
data "alicloud_log_service" "open" {
  count  = contains(keys(var.services), "alicloud_log_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_log_service", "Off")
}
data "alicloud_nas_service" "open" {
  count  = contains(keys(var.services), "alicloud_nas_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_nas_service", "Off")
}

data "alicloud_oss_service" "open" {
  count  = contains(keys(var.services), "alicloud_oss_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_oss_service", "Off")
}
data "alicloud_privatelink_service" "open" {
  count  = contains(keys(var.services), "alicloud_privatelink_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_privatelink_service", "Off")
}
data "alicloud_ons_service" "open" {
  count  = contains(keys(var.services), "alicloud_ons_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_ons_service", "Off")
}

data "alicloud_ots_service" "open" {
  count  = contains(keys(var.services), "alicloud_ots_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_ots_service", "Off")
}

data "alicloud_cr_service" "open" {
  count    = contains(keys(var.services), "alicloud_cr_service") ? 1 : 0
  enable   = lookup(var.services, "alicloud_cr_service", "Off")
  password = var.cr_pwd
}

data "alicloud_sae_service" "open" {
  count  = contains(keys(var.services), "alicloud_sae_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_sae_service", "Off")
}

data "alicloud_datahub_service" "open" {
  count  = contains(keys(var.services), "alicloud_datahub_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_datahub_service", "Off")
}

data "alicloud_edas_service" "open" {
  count  = contains(keys(var.services), "alicloud_edas_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_edas_service", "Off")
}

data "alicloud_cloud_sso_service" "open" {
  count  = contains(keys(var.services), "alicloud_cloud_sso_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_cloud_sso_service", "Off")
}

data "alicloud_hbr_service" "open" {
  count  = contains(keys(var.services), "alicloud_hbr_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_hbr_service", "Off")
}

data "alicloud_vpc_flow_log_service" "open" {
  count  = contains(keys(var.services), "alicloud_vpc_flow_log_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_vpc_flow_log_service", "Off")
}

data "alicloud_vpc_traffic_mirror_service" "open" {
  count  = contains(keys(var.services), "alicloud_vpc_traffic_mirror_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_vpc_traffic_mirror_service", "Off")
}

data "alicloud_vs_service" "open" {
  count  = contains(keys(var.services), "alicloud_vs_service") ? 1 : 0
  enable = lookup(var.services, "alicloud_vs_service", "Off")
}

