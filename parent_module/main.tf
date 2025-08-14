module "resource_group1" {
  source = "../child_module/rg"
  rg_name = "ravi3"
  rg_location = "west us"
}
module "storage_account" {
  source = "../child_module/storage_account"
  depends_on = [ module.resource_group1 ]
  rg_name = "ravi3"
  rg_location = "west us"
  storage_name = "ravi0508202512"
}
