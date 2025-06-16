locals {
  final_name= "${var.project}-${var.environment}-${var.component}"    # Assiging an expression to a name 
  #Assigning a function to name 
  ec2_tags = merge(var.common_tags, { 
    environment = "dev",version = "1.0"
  }
  )
}