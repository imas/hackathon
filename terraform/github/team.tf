resource "github_team" "imas_hack" {
  name    = "imas_hack"
  privacy = "closed"
}

resource "github_team" "staff" {
  name           = "staff"
  parent_team_id = "${github_team.imas_hack.id}"
  privacy        = "closed"
}

resource "github_team" "imastodon" {
  name    = "imastodon"
  privacy = "closed"
}

resource "github_team" "imasparql" {
  name        = "imasparql"
  description = "https://sparql.crssnky.xyz/imas/"
  privacy     = "closed"
}

resource "github_team" "imasparql_reviewer" {
  name        = "imasparql_reviewer"
  description = "https://sparql.crssnky.xyz/imas/"
  privacy     = "closed"
}

resource "github_team" "imasbook" {
  name        = "imasbook"
  privacy     = "closed"
}
