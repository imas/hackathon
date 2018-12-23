resource "github_team_repository" "team_imas_hack_hackathon" {
  team_id    = "${github_team.imas_hack.id}"
  repository = "${github_repository.hackathon.id}"
  permission = "push"
}

resource "github_team_repository" "team_imastodon_mastodon" {
  team_id    = "${github_team.imastodon.id}"
  repository = "${github_repository.mastodon.id}"
  permission = "push"
}

resource "github_team_repository" "team_imasparql_imasparql" {
  team_id    = "${github_team.imasparql.id}"
  repository = "${github_repository.imasparql.id}"
  permission = "push"
}

resource "github_team_repository" "team_imasparql_rdflint" {
  team_id    = "${github_team.imasparql.id}"
  repository = "${github_repository.rdflint.id}"
  permission = "push"
}
