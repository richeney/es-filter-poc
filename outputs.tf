output "archetype" {
  value = {
    policy_assignments     = setsubtract(setunion(var.archetype.policy_assignments, var.archetype_filter.add_policy_assignments), var.archetype_filter.remove_policy_assignments)
    policy_definitions     = setsubtract(setunion(var.archetype.policy_definitions, var.archetype_filter.add_policy_definitions), var.archetype_filter.remove_policy_definitions)
    policy_set_definitions = setsubtract(setunion(var.archetype.policy_set_definitions, var.archetype_filter.add_policy_set_definitions), var.archetype_filter.remove_policy_set_definitions)
    role_definitions       = setsubtract(setunion(var.archetype.role_definitions, var.archetype_filter.add_role_definitions), var.archetype_filter.remove_role_definitions)
    archetype_config       = var.archetype.archetype_config
  }
}
