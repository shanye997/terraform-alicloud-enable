output "services" {
  description = "The Collection that you specified."
  value       = var.services
}

output "event_bridge_service" {
  description = "The enable status of event bridge service"
  value       = data.alicloud_event_bridge_service.open[*].enable
}

output "fnf_service" {
  description = "The enable status of fnf service"
  value       = data.alicloud_fnf_service.open[*].enable
}

output "pvtz_service" {
  description = "The enable status of pvtz service"
  value       = data.alicloud_pvtz_service.open[*].enable
}

output "api_gateway_service" {
  description = "The enable status of api gateway service"
  value       = data.alicloud_api_gateway_service.open[*].enable
}

output "cdn_service" {
  description = "The enable status of cdn service"
  value       = data.alicloud_cdn_service.open[*].enable
}

output "cen_transit_router_service" {
  description = "The enable status of cen transit router service"
  value       = data.alicloud_cen_transit_router_service.open[*].enable
}

output "cloud_storage_gateway_service" {
  description = "The enable status of cloud storage gateway service"
  value       = data.alicloud_cloud_storage_gateway_service.open[*].enable
}

output "ack_service" {
  description = "The enable status of ack service"
  value       = data.alicloud_ack_service.open[*].enable
}

output "dcdn_service" {
  description = "The enable status of dcdn service"
  value       = data.alicloud_dcdn_service.open[*].enable
}

output "data_works_service" {
  description = "The enable status of data works service"
  value       = data.alicloud_data_works_service.open[*].enable
}

output "fc_service" {
  description = "The enable status of fc service"
  value       = data.alicloud_fc_service.open[*].enable
}

output "iot_service" {
  description = "The enable status of iot service"
  value       = data.alicloud_iot_service.open[*].enable
}

output "kms_service" {
  description = "The enable status of kms service"
  value       = data.alicloud_kms_service.open[*].enable
}

output "log_service" {
  description = "The enable status of log service"
  value       = data.alicloud_log_service.open[*].enable
}

output "nas_service" {
  description = "The enable status of nas service"
  value       = data.alicloud_nas_service.open[*].enable
}

output "oss_service" {
  description = "The enable status of oss service"
  value       = data.alicloud_oss_service.open[*].enable
}

output "privatelink_service" {
  description = "The enable status of privatelink service"
  value       = data.alicloud_privatelink_service.open[*].enable
}

output "ons_service" {
  description = "The enable status of ons service"
  value       = data.alicloud_ons_service.open[*].enable
}

output "ots_service" {
  description = "The enable status of ots service"
  value       = data.alicloud_ots_service.open[*].enable
}

output "cr_service" {
  description = "The enable status of cr service"
  value       = data.alicloud_cr_service.open[*].enable
}

output "sae_service" {
  description = "The enable status of sae service"
  value       = data.alicloud_sae_service.open[*].enable
}

output "datahub_service" {
  description = "The enable status of datahub service"
  value       = data.alicloud_datahub_service.open[*].enable
}

output "edas_service" {
  description = "The enable status of edas service"
  value       = data.alicloud_edas_service.open[*].enable
}

output "cloud_sso_service" {
  description = "The enable status of cloud sso service"
  value       = data.alicloud_cloud_sso_service.open[*].enable
}

output "hbr_service" {
  description = "The enable status of hbr service"
  value       = data.alicloud_hbr_service.open[*].enable
}

output "vpc_flow_log_service" {
  description = "The enable status of vpc flow log service"
  value       = data.alicloud_vpc_flow_log_service.open[*].enable
}

output "vpc_traffic_mirror_service" {
  description = "The enable status of vpc traffic mirror service"
  value       = data.alicloud_vpc_traffic_mirror_service.open[*].enable
}

output "vs_service" {
  description = "The enable status of vs service"
  value       = data.alicloud_vs_service.open[*].enable
}