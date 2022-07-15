local present, scroll = pcall(require, "neoscroll")

if not present then
   return
end

scroll.setup{}
