local present, git = pcall(require, "diffview")

if not present then
   return
end

git.setup{}
