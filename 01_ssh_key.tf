resource "digitalocean_ssh_key" "qcode" {
  name	= "qcode"
  public_key = file("id_rsa.pub")
}
