resource "github_team" "imas_hack" {
  name        = "imas_hack"
  privacy     = "closed"
}

resource "github_team" "staff" {
  name        = "staff"
  privacy     = "closed"
}

resource "github_team" "imastodon" {
  name        = "imastodon"
  privacy     = "closed"
}

resource "github_team" "imasparql" {
  name        = "imasparql"
  description = "https://sparql.crssnky.xyz/imas/"
  privacy     = "closed"
}
