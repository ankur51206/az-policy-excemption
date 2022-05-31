provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

resource "azurerm_subscription_policy_exemption" "example" {
  name = "exampleExemption"
  subscription_id      = data.azurerm_subscription.current.id
  policy_assignment_id = "/subscriptions/12f38dd9-8e4f-4697-96aa-c3d2ccd1793c/providers/Microsoft.Authorization/policyAssignments/190a335928b84a949fed473f"
  exemption_category   = "Mitigated"
}
