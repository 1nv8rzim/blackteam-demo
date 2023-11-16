resource "discord_server" "tf_server" {
  name   = "Terraform Server"
  region = "us-east"
}

resource "discord_category_channel" "general" {
  name      = "General"
  server_id = discord_server.tf_server.id
  position  = 0
}

resource "discord_text_channel" "general" {
  name      = "general"
  server_id = discord_server.tf_server.id
  category  = discord_category_channel.general.id
  position  = 0
}

resource "discord_invite" "general" {
  channel_id = discord_text_channel.general.id
  max_age    = 0
}

output "invite" {
  value = "https://discord.gg/${discord_invite.general.id}"
}
