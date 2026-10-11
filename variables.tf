variable "workstations_workstation_config_iam_members" {
  description = <<EOT
Map of workstations_workstation_config_iam_members, attributes below
Required:
    - member
    - role
    - workstation_cluster_id
    - workstation_config_id
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member                 = string
    role                   = string
    workstation_cluster_id = string
    workstation_config_id  = string
    location               = optional(string)
    project                = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

