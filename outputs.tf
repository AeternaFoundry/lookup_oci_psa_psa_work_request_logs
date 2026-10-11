output "psa_psa_work_request_logs_lookup_id" {
  description = "Map of id values across all psa_psa_work_request_logs_lookup, keyed the same as var.psa_psa_work_request_logs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_psa_psa_work_request_logs.psa_psa_work_request_logs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psa_psa_work_request_logs_lookup_filter" {
  description = "Map of filter values across all psa_psa_work_request_logs_lookup, keyed the same as var.psa_psa_work_request_logs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_psa_psa_work_request_logs.psa_psa_work_request_logs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "psa_psa_work_request_logs_lookup_work_request_id" {
  description = "Map of work_request_id values across all psa_psa_work_request_logs_lookup, keyed the same as var.psa_psa_work_request_logs_lookup except keys with no work_request_id are omitted"
  value       = { for k, v in data.oci_psa_psa_work_request_logs.psa_psa_work_request_logs_lookup : k => v.work_request_id if v.work_request_id != null && length(v.work_request_id) > 0 }
}
output "psa_psa_work_request_logs_lookup_work_request_log_entries" {
  description = "Map of work_request_log_entries values across all psa_psa_work_request_logs_lookup, keyed the same as var.psa_psa_work_request_logs_lookup except keys with no work_request_log_entries are omitted"
  value       = { for k, v in data.oci_psa_psa_work_request_logs.psa_psa_work_request_logs_lookup : k => v.work_request_log_entries if v.work_request_log_entries != null && length(v.work_request_log_entries) > 0 }
}

