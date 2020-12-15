resource "github_branch_protection" "hackathon_master" {
  repository_id  = "hackathon"
  pattern        = "master"
  enforce_admins = false

  required_status_checks {}

  required_pull_request_reviews {
    dismiss_stale_reviews = false
  }

  push_restrictions = [
    data.github_team.imas_hack.node_id
  ]
}

resource "github_branch_protection" "mastodon_imastodon" {
  repository_id  = "mastodon"
  pattern        = "imastodon"
  enforce_admins = false

  required_status_checks {
    strict   = false
    contexts = [
      "ci/circleci: test-ruby2.6",
    ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = false
  }
}

resource "github_branch_protection" "imasparql_master" {
  repository_id  = "imasparql"
  pattern        = "master"
  enforce_admins = false

  required_status_checks {
    strict   = true
    contexts = ["rdflint"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = false
    require_code_owner_reviews = true
    required_approving_review_count = 1
  }
}
