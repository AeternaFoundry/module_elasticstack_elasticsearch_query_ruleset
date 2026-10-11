variable "elasticsearch_query_rulesets" {
  description = <<EOT
Map of elasticsearch_query_rulesets, attributes below
Required:
    - rules
    - ruleset_id
Optional:
    - timeouts
    - elasticsearch_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_data (optional)
        - ca_file (optional)
        - ca_fingerprint (optional)
        - cert_data (optional)
        - cert_file (optional)
        - endpoints (optional)
        - es_client_authentication (optional)
        - headers (optional)
        - insecure (optional)
        - key_data (optional)
        - key_file (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    rules = list(object({
      actions = object({
        docs = optional(list(object({
          _id    = string
          _index = string
        })))
        ids = optional(list(string))
      })
      criteria = list(object({
        metadata = optional(string)
        type     = string
        values   = optional(string)
      }))
      priority = optional(number)
      rule_id  = string
      type     = string
    }))
    ruleset_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    elasticsearch_connection = optional(list(object({
      api_key                  = optional(string)
      bearer_token             = optional(string)
      ca_data                  = optional(string)
      ca_file                  = optional(string)
      ca_fingerprint           = optional(string)
      cert_data                = optional(string)
      cert_file                = optional(string)
      endpoints                = optional(list(string))
      es_client_authentication = optional(string)
      headers                  = optional(map(string))
      insecure                 = optional(bool)
      key_data                 = optional(string)
      key_file                 = optional(string)
      password                 = optional(string)
      username                 = optional(string)
    })))
  }))
}

