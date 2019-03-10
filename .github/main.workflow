workflow "New workflow" {
  on = "push"
  resolves = ["lshw", "cpuinfo"]
}

action "lshw" {
  uses = "./debian"
  args = ["lshw"]
}

action "cpuinfo" {
  uses = "./debian"
  args = ["cat", "/proc/cpuinfo"]
}
