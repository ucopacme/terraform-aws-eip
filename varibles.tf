variable "tags" {
  description = "A map of tags to add to load balancer"
  type        = map(string)
  default     = {}
}