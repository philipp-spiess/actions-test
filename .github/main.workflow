workflow "New workflow" {
  on = "push"
  resolves = ["lshw", "cpuinfo"]
}

action "lshw" {
  uses = "actions/bin/sh@master"
  args = ["lshw"]
}

action "cpuinfo" {
  uses = "actions/bin/sh@master"
  args = ["cat", "/proc/cpuinfo"]
}
