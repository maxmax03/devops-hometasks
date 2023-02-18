resource "github_repository_file" "file" {
  count = length(var.files)
  repository          = "devops-hometasks"
  branch              = "main"
  file                = "13-terraform/${element(var.files, count.index)}"
   content             = file("/vagrant/${element(var.files, count.index)}")
  commit_message      = "managed by terraform"
  commit_author       = "Max_Shabeka"
  commit_email        = "imax.sh@gmail.com"
  overwrite_on_create = true
}