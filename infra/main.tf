terraform {
  cloud {
    organization = "maheshbhoyar"

    workspaces {
      name = "github-action-ecr"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider aws {
  region  = var.region
#   profile = var.profile
}

