--os.execute("chcp 65001")
local bn = require "nums/bn"
local fac = bn:new(1)
local file=nil
--打开文件
function openfile (name)
  file = io.open(name,"w")
end
--打印至文件
function printfile (str)
  file:write (str.."\n")
end
--关闭文件
function closefile ()
  file:close()
end
--准备
print(">Enter max (1! to max!)")
local go = io.read()
openfile('Factorials_to'..go..'.txt')
--主程序
print('>loading...')
for i=1,go do
  fac=i*fac
  printfile(i..'!='..fac.." (Total "..(string.len(tostring(fac)))..' Digits)')
end
closefile()
print('ok')
os.exit()