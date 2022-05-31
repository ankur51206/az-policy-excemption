
provider "azurerm" {
  features {}
}


resource "azurerm_management_group" "policy" {
  display_name = "Add your Management Group"
}


resource "azurerm_management_group_policy_exemption" "example" {
  name                 = "exampleExemption"
  management_group_id  = azurerm_management_group.policy.id
  policy_assignment_id = "/subscriptions/12f38dd9-8e4f-4697-96aa-c3d2ccd1793c/providers/Microsoft.Authorization/policyAssignments/190a335928b84a949fed473f"
  exemption_category   = "Mitigated"
}
