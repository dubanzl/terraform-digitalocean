resource "digitalocean_domain" "qcode" {
  name = "qcode.co"
}

resource "digitalocean_record" "www" {
 domain = digitalocean_domain.qcode.name
 type = "A"
 name = "qcode"
 ttl = "30"
 value = digitalocean_droplet.web.ipv4_address
}
