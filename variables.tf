variable "psa_psa_work_request_logs_lookup" {
  description = <<EOT
Map of psa_psa_work_request_logs_lookup, attributes below
Required:
    - work_request_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    work_request_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

