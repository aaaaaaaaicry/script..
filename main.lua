
if pcall(function() 
    if debug and debug.getinfo then 
        error("debug") 
    end 
end) then
    os.exit()
end
print((function() local t={(25+3),(58*1),(3*1),(0x4),(6+40)}; local r=""; for i=(1*1),#t do r=r..string.char(t[i]~(126*1)) end; return r end)())
