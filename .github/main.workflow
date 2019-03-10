workflow "New workflow" {
  on = "push"
  resolves = ["lshw", "fdisk", "lsblk", "ip"]
}

action "lshw" {
  uses = "./debian"
  args = ["lshw"]
}

action "fdisk" {
  uses = "./debian"
  args = ["fdisk -l"]
}

action "lsblk" {
  uses = "./debian"
  args = ["lsblk -d -o name,rota"]
}

action "ip" {
  uses = "./debian"
  args = ["curl https://ipinfo.io/ip"]
}
