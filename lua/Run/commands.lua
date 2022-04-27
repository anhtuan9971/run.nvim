local path = vim.fn.expand("%:p")
local name = vim.fn.expand("%:t:r")
local dir = vim.fn.expand("%:p:h")

local commands = {
  ["c"] = "cd " .. dir .. " && clang " .. path .. " && ./a.out",
  ["cpp"] = "cd " .. dir .. " && clang++ " .. path .. " && ./a.out",
  ["dart"] = "dart " .. path,
  ["go"] = "go run " .. path,
  ["html"] = "xdg-open " ..  path,
  -- ["java"] = "cd " .. dir .. " && javac " .. path .. "&& java " .. name,
  ["java"] = "cd " .. dir .. " && java " .. name,
  ["javascript"] = "node " .. path,
  ["typescript"] = "ts-node" .. path,
  ["lua"] = "lua " .. path,
  ["perl"] = "perl " .. path,
  ["php"] = "php " .. path,
  ["python"] = "python3 " .. path,
  ["r"] = "Rscript " .. path,
  ["rust"] = "cd " .. dir .. " && cargo run " .. path .. " ",
  ["sh"] = ". " .. path,
  ["swift"] = "swift " .. path,
  --["kotlin"] = "kotlin " .. path,
  --["cs"] = "mono " .. path,
}

return commands
