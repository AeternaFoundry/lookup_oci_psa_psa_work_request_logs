data "oci_psa_psa_work_request_logs" "psa_psa_work_request_logs_lookup" {
  for_each = var.psa_psa_work_request_logs_lookup

  work_request_id = each.value.work_request_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

