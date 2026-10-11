output "elasticsearch_query_rulesets_id" {
  description = "Map of id values across all elasticsearch_query_rulesets, keyed the same as var.elasticsearch_query_rulesets except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_query_ruleset.elasticsearch_query_rulesets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_query_rulesets_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_query_rulesets, keyed the same as var.elasticsearch_query_rulesets except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_query_ruleset.elasticsearch_query_rulesets : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_query_rulesets_rules" {
  description = "Map of rules values across all elasticsearch_query_rulesets, keyed the same as var.elasticsearch_query_rulesets except keys with no rules are omitted"
  value       = { for k, v in elasticstack_elasticsearch_query_ruleset.elasticsearch_query_rulesets : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "elasticsearch_query_rulesets_ruleset_id" {
  description = "Map of ruleset_id values across all elasticsearch_query_rulesets, keyed the same as var.elasticsearch_query_rulesets except keys with no ruleset_id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_query_ruleset.elasticsearch_query_rulesets : k => v.ruleset_id if v.ruleset_id != null && length(v.ruleset_id) > 0 }
}

