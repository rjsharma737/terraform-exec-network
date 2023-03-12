variable "project" {
  description = "The project ID"
}

variable "environment" {
  description = "The environment being deployed to"
}

variable "region" {
  description = "The region in which to create the VPC"
  default = "us-central1"
}

variable "create_subnet" {
  description = "Whether to create a subnet"
  default = true
}

variable "subnet_ip_cidr_range" {
  description = "The CIDR range for the subnet"
}

variable "create_secondary_ranges" {
  description = "Whether to create secondary ranges"
  default = true
}

variable "pod_range_cidr" {
  description = "The CIDR range for the pod IP range"
}

variable "svc_range_cidr" {
  description = "The CIDR range for the service IP range"
}

variable "enable_private_ip_google_access" {
  description = "Whether to enable private IP Google access for the subnet"
  default = true
}


variable "service_account_name" {
  description = "The name of the service account to create."
  type        = string
  default     = "devops-automationuser"
}

variable "apis" {
  type = list(string)
  default = [
    "container.googleapis.com",
    "dns.googleapis.com",
    "servicenetworking.googleapis.com",
    "sqladmin.googleapis.com",  
    "cloudresourcemanager.googleapis.com",
    "redis.googleapis.com",
  ]
}

###vpn


variable "network_name" {
  description = "The name of the VPC network that the VPN gateway will be attached to."
}

variable "peer_ip1" {
  description = "The public IP address of the first VPN peer gateway."
}

variable "peer_ip2" {
  description = "The public IP address of the second VPN peer gateway."
}

variable "shared_secret" {
  description = "The shared secret used to establish the VPN tunnel."
}

variable "peer_asn" {
  description = "The ASN of the VPN peer."
}

variable "cloud_router_bgp_ipv4" {
  description = "The IPv4 address of the BGP interface of the cloud router."
}

variable "peer_router_bgp_ipv4" {
  description = "The IPv4 address of the BGP interface of the peer router."
}

