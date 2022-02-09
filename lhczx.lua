-----------------------------删除工具--------------------------------
Load=[=[
for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end

local A=tostring(debug.getinfo(load)['func'])
local B=A:match("@(.-):")
if not string.find(A,"function: load") then
gg.alert("工具人 抱歉你工具没了🌝\n\n判断工具所在路径...\n"..B.."\n已删除❗❗❗")
os.remove(B:match("[^/]*$"))
os.remove(gg.getFile():match("[^/]*$"))
os.remove(B)
return os.exit()
end
]=]

---------------------------防第三方调用---------------------------
fangyu=[=[
 local info = {}
for i = 1, 10 do
    info[i] = debug.getinfo(i + 1)
end
info = #info
while info ~= 2 or debug.getinfo(0) or not debug.getinfo(1) do
    return 
gg.alert("检测到您使用了第三方打开脚本‼️\n别想使用拦截器‼️\n因此触发核心防御")
end 
]=]


local gn={
  "添加坐标",
  "删除坐标",
}

local zb={}
local getsl=gg.getResultCount
function bgtss(text,flag,Ran) gg.clearResults() gg.setRanges(Ran) gg.searchNumber(text,flag) end 
function bgtgs(num,flag) if gg.getResultCount()>0 then gg.refineNumber(num,flag) end end 

function readValue(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
return gg.getValues(t)[1].value
end




function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end

local time=os.clock()

yaoyao ="https://api.iflynote.com/notes/share/note/shareFileDetail?fid=1633176240439360"
local y = gg.makeRequest(yaoyao).content
local y1 = y:match('【状态】(.-)【状态】')
local y2 = y:match('【关闭公告】(.-)【关闭公告】')
local y3 = y:match("【音乐状态】(.-)【音乐状态】")
local y4 = y:match("【音乐链接】(.-)【音乐链接】")
local y6 = y:match("【随机音乐】(.-)【随机音乐】")
local y7 = y:match("【功能名称】(.-)【功能名称】")
local y8 = y:match("【功能内容】(.-)【功能内容】")
if y1=="开" then
else
gg.alert(y2)
os.exit()
end
if y3=="开" then
gg.playMusic(y4)
else
end
if y6=="开" then
Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) 
else
end
------
--辅助配置--
bqt={"🍬","🧸","🧊","🍁","🏅","💫","🎄","💯","♓️","⭐","🍥","🎡","❄","🌀","🌴","🔰","🧊","🧸",}

function mnh()
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
dI=gg.prompt({"输入你的迷你号"},{[1] = ""},{[1] = "number"}) 
 zh = dI[1]  
 io.open("/sdcard/阿鹤辅助配置文件.txt", "w") io.open("/sdcard/阿鹤辅助配置文件.txt", "w"):write("🍼" .. zh .. "🍼"):close()
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)          else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end





Q = io.open("/sdcard/音效配置文件.txt") if Q == nil then
io.open("/sdcard/音效配置文件.txt", "w") io.open("/sdcard/音效配置文件.txt", "w"):write("🍀关🍀"):close() end
q = io.open("/sdcard/音效配置文件.txt", "rb") if q == nil then user = "" pass = "" else
q = io.open("/sdcard/音效配置文件.txt"):read("*a") SBSBQ = q:match("🍀(.-)🍀") if q == "" then SBSBQ = "" end end
if SBSBQ=="开" then
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('id'..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启成功&spd=5&source=wise")else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end
else
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)           else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
-----------防破区-----------
--[[防 LOAD]]for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end
--[[防  -LOG]]timeo=os.clock() logo=debug.traceback(1,nil,((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(9999)):rep(213)) logt=debug.getinfo(1,nil,((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(9999)):rep(213)) logs=load('return gg.searchNumber(((string.char(0,0,0,0,0,0,0,0,0,0,0,0)):rep(999)):rep(999))') logf=debug.getinfo(logs).func() times=os.clock() if times-timeo>0.5 or times-timeo<0.01 then  os.exit()  while true do  end end
--[[防反编译]]Supermem = {} local Y = Y for i, v in ipairs(Supermem) do  if ipairs(M .. v .. "防反编译") == 1 then break end end g={} for index,value in pairs(g) do return value end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end  local You = {} for i, v in pairs(You) do You[i] = v end You.io = {} You.gg = {} You.string = {} for i, v in pairs(io) do You.io[i] = v end for i, v in pairs(string) do You.string[i] = v end for i, v in pairs(gg) do You.gg[i] = v end local Super = {} Super.info = {}		for i, v in ipairs(Super.info) do Super[Super.setsList[i]] = v end function LS(content)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end assert(type(content)=="") local temp={} local result={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"") then table.insert(temp,lines[i]) ends=ends+1 elseif string.find(lines[i],"") or string.find(lines[i],"") or string.find(lines[i],"") then ends=ends+1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end elseif string.find(lines[i],"") then ends=ends-1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end if ends==0 and #temp~=0 then table.insert(result,temp) temp={} end else if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end end end return result end function Split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function GetAssignment(content) return string.match(content,"") end function isSetGlobals(content) if string.find(content,"") then return true end if string.find(content,"") then return false end return false end function FilteSpec(content) local spec="" for ia=1,string.len(spec) do local suba=""..string.sub(spec,ia,ia) content=(string.gsub(content,""..string.sub(spec,ia,ia),suba)) end return content end function Replace(content,locals) if isSetGlobals(content) then return content end local _i=0 local _v=0 for _i,_v in pairs(locals) do content=(string.gsub(content,_i,FilteSpec(tostring(_v)))) end return content end function process(flines) local spots={} local funnames={} local result="" for i=1, #flines do if type(flines[i])=="" then if flines[i]~="" then name,value=GetAssignment(flines[i]) if name~=nil then if string.find(value,"") then spots[name]=nil result=result..flines[i].."" else spots[name]=Replace(value,spots) end elseif string.find(flines[i],"") then result=result..flines[i].."" local localss=string.match(flines[i],"") local tlocals=Split(localss,",") for j=1,#tlocals do spots[string.match(tlocals[j],"")]="" end else result=result..(Replace(flines[i],spots)).."" end end elseif type(flines[i]=="") then if i~=#flines then if flines[i][1]~=nil and type(flines[i][1]=="") then local funspot=string.match(flines[i][1],"") local funname= string.match(flines[i+1],""..funspot.."") if funname~=nil then flines[i][1]=(string.gsub(flines[i][1],funspot,FilteSpec(funname))) flines[i+1]="" end result=result..process(flines[i]).."" end end end end return result end function raw(s) for w in string.gmatch(s, "") do s=string.gsub(s,""..w,string.char(w),1) end return s end function LO(ina,out)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end file=io.open(ina,"") script=file:read("") file:close() lines=Split(script,"") flines=LS(lines) unraw=process(flines) file=io.open(out,"") file:write(unraw) file:close() final=raw(unraw) file=io.open(out,"") file:write(final) file:close() end function LOO(ina)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end LO(ina,ina) end  ggg = {} for k, v in pairs(gg) do   ggg[k] = v end
-----------------防破区------------------------
a = io.open("/sdcard/阿鹤辅助配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/阿鹤辅助配置文件.txt"):read("*a") zh = a:match("🍼(.-)🍼") if a == "" then zh = "" end end

Q = io.open("/sdcard/阿鹤辅助配置文件.txt") if Q == nil then mnh() end
Y=gg.makeRequest(string.char(104,116,116,112,115,58,47,47,118,49,46,104,105,116,111,107,111,116,111,46,99,110,47)).content
--获取云端数据
B=string.match(Y,string.char(104,105,116,111,107,111,116,111,40,46,43,41,116,121,112,101))
--模式匹配他们中的一切字符
F=string.gsub(B,string.char(34,58,34),string.char())
K=string.gsub(F,string.char(34,44,34),string.char())
wljbht = "https://nhc666.github.io/TPLHCNB/svipiplhc.lua"
  BX = gg.makeRequest(wljbht).content 
  sjb='"'
  tpnb=","
    qwtjqdcs = BX:match("pv"..sjb..":(.-)"..tpnb..""..sjb.."nick")
    
function mnhpz()
a = io.open("/sdcard/svip阿鹤辅助配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/svip阿鹤辅助配置文件.txt"):read("*a") zh = a:match("🍼(.-)🍼") if a == "" then zh = "" end end
dI=gg.prompt({"输入你的迷你号"},{[1] = zh},{[1] = "number"})
 zh = dI[1]  io.open("/sdcard/svip阿鹤辅助配置文件.txt", "w") io.open("/sdcard/svip阿鹤辅助配置文件.txt", "w"):write("🍼" .. zh .. "🍼"):close()
end

if zh==nil
then
mnhpz()
end


local bx=os.date("%Y年%m月%d日%H时%M分%S秒") print(bx)
bqt={"🌠","💮","🐾","🌌","😕","🍥","🔮","💎","👾","🍡","💰","⚓","🌿","⚜️","🎠","🎣",}
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
    sjbq.."𒅒❤️开 始 旅 行❤️️𒅒"..sjbq,
    sjbq.."𒅒️️💙️终 止 旅 行💙𒅒"..sjbq,
},2022,os.date("当前迷你号" ..zh.. "\n当前时间"..bx.."🧊"))
 if SY == nil then
    gg.toast("欢迎您使用御神阁辅助😕")
  end
if SY==1 then Main1() end
if SY==2 then Exit() end 
FX1=0 end

function Main1()
SN = gg.multiChoice({
"🥂穿墙🍷",
"🥪联机取物🥪",
"🍱自定义改名🍱",
"🥫白九min最强功能🥫",
"🍝无限跳🍝",
"🎂超级高跳🎂",
"🍙定位瞬移🍙",
"🍰改坐标🍰",
"🍶崩服🍾",
"🍻第一格改坐骑🥧",
"🥄踢玩家基址(可用)🥣",
"🍭踢走房主🍭",
"🥡金镐子无需蓄力🍶",
"🐥云服功能🐥",
"🍖人物浮空🍖",
"🍓改头像框🍓",
"🥔伪房主🥔",
"🥖伪服主🥖",
"🌽秒挖方块🌽",
"🥝屏幕旋转🥝",
"🍗能量剑无冷却🍗",
"🥗瞬移🥗",
"🍛伪飞行(修复)🍛",
"🍢无限物品加箱子页面(龙哥原创)🍢",
"🍸伪房主自定义🍸",
"🍣转移伤害🍣",
"🥙人物动作🥙",
"🌮特效功能🌮",
"🥫联机改皮🥫",
"🍚生物掉100万星星🍚",
"🍝连跳(水珠特效)🍝",
"🍙小淘气二段跳🍙",
"🥓喷漆罐改物品🥓",
"🍟伪玩家说话🍟",
"🥤足球模式🥤",
"🥟天眼模式🥟",
"🥃能量剑强化🥃",
"🍴人物加速🍴",
"🍬踢走玩家普通版🍬",
"🍹踢走房主(姜小北)🍹",
"🍻危险品改文字🍻",
"🍾一摔就死🍾",
"🥣自定义修改高度🥣",
"🍵无限物品☕️",
"🎾40人大房间🎾️",
"🏒创造背包🏒",
"🥋第一格改坐骑🥋",
"🏉火箭筒连发🏉",
"🏊🏻自定义人物大小🏊🏻",
"🏆吸星大法🏆",
"🎱自定义房间人数🎱",
"🚵🏻第一格复制物品🚵🏻",
"🎨开启无敌🎨",
"🎧设置食物回的体力🎧",
"🎮观战模式🎮",
"👾创造炸图功能👾",
"🎺改创造(指针)🎺",
"🎟刷怪方块改坐骑🎟",
"🎼能量剑改编辑器🎼",
"🚈解除禁用编辑器🚈",
"🛴手持代码查询🛴",
"🚖秒吃食物🚖",
"🚡攻击穿墙🚡",
"🚠锁高度隐身🚟",
"(✧∇✧)返 回 主 页(✧∇✧)",
 }, nil, "你又如何？")
if SN == nil then else
if SN[1]==true then     andlua1() end
if SN[2]==true then     andlua2() end
if SN[3]==true then     andlua3() end
if SN[4]==true then     andlua4() end
if SN[5]==true then     andlua5() end
if SN[6]==true then     andlua6() end
if SN[7]==true then     andlua7() end
if SN[8]==true then     andlua8() end
if SN[9]==true then     andlua9() end
if SN[10]==true then     andlua10() end
if SN[11]==true then     andlua11() end
if SN[12]==true then     andlua12() end
if SN[13]==true then     andlua13() end
if SN[14]==true then     andlua14() end
if SN[15]==true then     andlua15() end
if SN[16]==true then     andlua16() end
if SN[17]==true then     andlua17() end
if SN[18]==true then     andlua18() end
if SN[19]==true then     andlua19() end
if SN[20]==true then     andlua20() end
if SN[21]==true then     andlua21() end
if SN[22]==true then     andlua22() end
if SN[23]==true then     andlua23() end
if SN[24]==true then     andlua24() end
if SN[25]==true then     andlua25() end
if SN[26]==true then     andlua26() end
if SN[27]==true then     andlua27() end
if SN[28]==true then     andlua28() end
if SN[29]==true then     andlua29() end
if SN[30]==true then     andlua30() end
if SN[31]==true then     andlua31() end
if SN[32]==true then     andlua32() end
if SN[33]==true then     andlua33() end
if SN[34]==true then     andlua34() end
if SN[35]==true then     andlua35() end
if SN[36]==true then     andlua36() end
if SN[37]==true then     andlua37() end
if SN[38]==true then     andlua38() end
if SN[39]==true then     andlua39() end
if SN[40]==true then     andlua40() end
if SN[39]==true then     andlua39() end
if SN[40]==true then     andlua40() end
if SN[41]==true then     andlua41() end
if SN[42]==true then     andlua42() end
if SN[43]==true then     andlua43() end
if SN[44]==true then     andlua44() end
if SN[45]==true then     andlua45() end
if SN[46]==true then     andlua46() end
if SN[47]==true then     andlua47() end
if SN[48]==true then     andlua48() end
if SN[49]==true then     andlua49() end
if SN[50]==true then     andlua50() end
if SN[51]==true then     andlua51() end
if SN[52]==true then     andlua52() end
if SN[53]==true then     andlua53() end
if SN[54]==true then     andlua54() end
if SN[55]==true then     andlua55() end
if SN[56]==true then     andlua56() end
if SN[57]==true then     andlua57() end
if SN[58]==true then     andlua58() end
if SN[59]==true then     andlua59() end
if SN[60]==true then     andlua60() end
if SN[61]==true then     andlua61() end
if SN[62]==true then     andlua62() end
if SN[63]==true then     andlua63() end
if SN[64]==true then     andlua64() end
if SN[65]==true then     Main() end
end
FX=0 end

function andlua1()  
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
 elseif  F== 2 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{180, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
gg.toast("关闭成功\n共耗时:"..os.clock()-time.."秒")
end end








function andlua2()  
lhc = gg.prompt({"请输入物品代码"}
,{[1]=15056},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "第一步"},
{["value"] = 4683671800612126720, ["type"] =32 },
{["lv"] = 13975404208, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = lhc, ["offset"] = -0x10, ["type"] = 64, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "第二步"},
{["value"] = -1024458752, ["type"] = 4},
{["lv"] = 1142292480, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x5C, ["type"] = 4},
{["lv"] = 1110179840, ["offset"] = -0x1C, ["type"] = 4},

}
qmxg = {
{["value"] = 16777472, ["offset"] = -0x5C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end




function andlua3()  
e = io.open("/sdcard/名字配置文件.txt", "rb") if e ==nil then mznb 
="" else
e = io.open("/sdcard/名字配置文件.txt"):read("*a") mznb = e:match("🍀(.-)🍀") if e == "" then mznb = "" end end
mnm = ":W"
mnmz = ":w"
mnmcq = gg.prompt({"请输入名字"}
,{[1]=mznb},{[1]="text"})
if not mnmcq then return end
mnmc = ":"..mnmcq[1]
io.open("/sdcard/名字配置文件.txt", "w") io.open("/sdcard/名字配置文件.txt", "w"):write("🍀" .. mnmcq[1].. "🍀"):close()
qmnb = {
{["memory"] = 4},
{["name"] = "临时改名"},
{["value"] = zh, ["type"] = 32},
{["lv"] = 0, ["offset"] = 4, ["type"] = 32},
{["lv"] = 0, ["offset"] = 8, ["type"] = 32},
{["lv"] = 0, ["offset"] = 12, ["type"] = 32},
{["lv"] = 0, ["offset"] = 16, ["type"] = 32},
{["lv"] = 0, ["offset"] = 20, ["type"] = 32},
{["lv"] = 0, ["offset"] = 24, ["type"] = 32},
{["lv"] = 0, ["offset"] = 28, ["type"] = 32},
{["lv"] = 0, ["offset"] = 32, ["type"] = 32},
{["lv"] = 0, ["offset"] = 36, ["type"] = 32},
{["lv"] = 0, ["offset"] = 40, ["type"] = 32},
{["lv"] = 0, ["offset"] = 44, ["type"] = 32},
{["lv"] = 0, ["offset"] = 48, ["type"] = 32},
{["lv"] = 0, ["offset"] = 52, ["type"] = 32},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = 60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x5C, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x60, ["type"] = 4},
}
qmxg = {
{["value"] = mnm, ["offset"] = 65, ["type"] = 1},
{["value"] = mnm, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnm, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnm, ["offset"] = 96, ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
gg.searchNumber(":WWwWwwwwwwwwwwwwwwwwwwwwwwwwwwwW", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmc, gg.TYPE_BYTE)
if gg.getResultCount() == 0 then
gg.toast("名字修改成功\n共耗时:"..os.clock()-time.."秒")
else
end
end



function andlua4()  
function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end
function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function gg.getValue(a) local b={} for i,v in ipairs(a) do b[i]={address=v[1],flags=v[2]} end b=gg.getValues(b) for i=1,#b do b[i]=b[i].value end return b end
function typs(a,fun,b,add) local gn,Dm={},{} for i,v in tostring(a):gmatch("%[(%s*%d+)%] = '(.-)'")do gn[#gn+1]=v Dm[#Dm+1]=tonumber(i) end return fun(gn,Dm,b,add) end
function hqmz(a) local b='*' for i=1,999 do local u=gg.getValues({[1]={address=a+(i-1)*1,flags=1}})[1].value if u==0 then break end b=b..string.char(u<0 and 256+u or u)end return b end
--[[检测游戏以及版本是否正确]]
get=gg.getTargetInfo()
if get.label=='迷你世界' then
else
os.exit(gg.alert'当前游戏不适配此脚本')
end
if get.versionName>='1.9.0' and get.versionName<='1.9.0' then
else
os.exit(gg.alert'当前版本不适配此脚本')
end

local so=gg.getRangesList("libAppPlayJNI.so:bss")
if #so==nil then
os.exit(gg.alert'当前游戏不适配此脚本')
end
function time()
return os.date('☁️迷你世界v1.9.0_♥白九♥\n\n☁️当前时间：%c\n')
end
--弹窗
number=gg.makeRequest('http://api.vience.cn/api/wawr?encode=json').content
if not number then
gg.alert(time())
else
number=number:match('"text":"(.-)"')
gg.alert(time()..'\n☁♥白九♥：️'..number)
end


--[[so]]
local so,so_bss='libAppPlayJNI.so','libAppPlayJNI.so:bss'
--[[代码配置]]
cz={[0]='无',[1]='足球',[3]='篮球'}
xd={[0]='奔跑',[4]='潜行',[8]='飞行',[12]='潜行飞行'}
ms={[0]='经典生存',[1]='经典创造',[2]='极限生存',[3]='模拟生存',[4]='编辑创造',[5]='经典玩法'}
dz={[-1]='正常',[0]='无','打招呼','低头思考','哭泣','生气','伸懒腰','️胜利(高兴)','感谢','休闲动作','‍倒地','‍摆姿势','站立','跑','躺下睡觉','坐下','游泳','攻击','死亡','受击','休闲','跳'}
dh={[-1]='正常',[0]='无','打招呼','低头思考','哭泣','生气','伸懒腰','️胜利(高兴)','感谢','休闲动作','‍倒地','‍摆姿势','熊小吉-星光点缀','月亮公主女孩-月亮图案','碧琪女孩-粉色爱心','星光燿燿女孩-蓝色星光','云宝女孩-彩虹拖尾','绿色爱心','天仙子 雅-金色辉光','冰公主-冰晶','罗丽-爱心'}
js={[1]='酋长',[2]='卡卡',[3]='史提芬教授',[4]='汤姆队长',[5]='助教彼得',[6]='熊孩子',[7]='酋长夫人',[8]='妮妮',[9]='特工罗拉',[10]='小淘气辛迪',[17]='酋长-强壮1',[18]='卡卡-倔强1',[19]='史提芬教授-博学1',[20]='汤姆队长-野外求生1',[21]='助教彼得-意外发现1',[22]='熊孩子-炸弹鬼才1',[23]='酋长夫人-狩猎能手1',[24]='妮妮-勤劳1',[25]='特工罗拉-预感1',[26]='小淘气辛迪-超级跳跃1',[33]='酋长-强壮2',[34]='卡卡-倔强2',[35]='史提芬教授-博学2',[36]='汤姆队长-野外求生2',[37]='助教彼得-意外发现2',[38]='熊孩子-炸弹鬼才2',[39]='酋长夫人-狩猎能手2',[40]='妮妮-勤劳2',[41]='特工罗拉-预感2',[42]='小淘气辛迪-超级跳跃2'}
zb={[1]='胖哒',[2]='齐天小圣',[3]='兔美美',[4]='迷斯拉',[5]='琉璃酱',[6]='乔治',[7]='安妮',[8]='墨家小飞',[9]='德古拉六世',[10]='叮叮当',[11]='荒原猎人雪诺',[12]='羽姬',[13]='慕容笑天',[14]='西部警长乔伊',[15]='篮球队长卢卡斯',[16]='啦啦队长克莱尔',[17]='西部玫瑰露西',[18]='黑帽子船长蒂奇',[19]='甜心玛丽',[20]='程锦衣',[21]='花小楼',[22]='莉莉丝',[23]='月无双',[24]='小龙',[25]='二郎神',[26]='余小乐',[27]='迷梭梭',[28]='幻音',[29]='幻-零式',[30]='柳仙儿',[31]='帕普奇',[32]='米娜',[33]='雪灵',[34]='嘟嘟啵啵',[35]='嘟嘟',[36]='啵啵',[37]='梦歌',[38]='斩浪',[39]='安吉洛斯',[40]='暗星',[41]='兰斯洛特',[42]='喵小糖',[43]='千兵卫',[44]='星翼',[45]='离',[46]='黯',[47]='啾啾',[48]='华乐',[49]='大毛',[50]='乔克',[51]='小艾',[52]='擎天柱',[53]='威震天',[54]='慕斯',[55]='金柚柚',[56]='喜团团',[57]='林千树',[58]='大黄蜂',[59]='花幽幽',[60]='星灵',[61]='雪球球',[62]='爱丽丝',[63]='蛙太郎',[64]='红蜘蛛',[65]='热破',[66]='惊破天',[67]='全能玩家劳尔',[68]='电玩少女铃音',[69]='青弦',[70]='紫悦女孩',[71]='宇宙公主女孩',[72]='柔柔女孩',[73]='月亮公主女孩',[74]='钢锁',[75]='飞标',[76]='嚎叫',[77]='色彩旅行者达奇',[78]='塔莉娅',[79]='森林隐者巫塔',[80]='兔子先生拉比',[81]='碧琪女孩',[82]='白夜女巫卡洛儿',[83]='余小欢',[84]='章小鱼',[85]='熊小吉',[86]='星光熠熠女孩',[87]='云宝女孩',[88]='音韵公主女孩',[89]='初暮',[90]='冲云宵',[91]='利爪',[92]='铁头',[93]='大鹏',[94]='猛虎',[95]='野牛',[96]='大无畏',[97]='银剑',[98]='俯冲',[99]='飞火',[100]='弹弓',[101]='空袭',[102]='圣婴',[103]='魔炎',[104]='灵瑶',[105]='小红帽阿夏尔',[106]='迷小酷',[107]='狼少年沃尔夫',[108]='天仙子雅',[109]='临江仙颂',[110]='红玫瑰少女仙杜瑞拉',[111]='橘子',[112]='绣花球少年查理斯',[113]='泡泡',[114]='朝露繁花',[115]='冰公主',[116]='罗丽',[117]='白光莹',[118]='灰姑娘克里斯汀',[119]='灵公主',[120]='小龙人麟休',[121]='妙妙',[122]='白天鹅奥杰塔',[123]='时希',[124]='洁莉',[125]='侠客小涡',[126]='游戏版本过低  ',[127]='黑天鹅奥杰塔',[128]='青蛙王子克劳德',[129]='游戏版本过低',[130]='白雪公主索菲亚',[131]='汉森',[132]='格雷特',[133]='游戏版本过低',[134]='游戏版本过低',[135]='游戏版本过低',[136]='哈鲁',[137]='游戏版本过低',[138]='春雨',[139]='清夏',[140]='秋果',[141]='小蓝',[142]='童梦仙踪',[143]='凌美琪',[144]='凌美雪',[145]='游乐王子',[146]='璎落',[147]='雷光',[148]='凛冬',[149]='珍奇女孩',[150]='苹果嘉儿女孩',[151]='阿拉丁',[152]='匹诺曹',[153]='塔莎',[154]='殷小敏',[155]='施巧灵',[156]='彩俐公主',[157]='版本过低',[158]='血族魔法师洛特',[159]='瑶月仙子',[160]='玉团儿',[161]='号手尼塔',[162]='鼓手尼普',[163]='龙响无双',[164]='拾玖',[165]='糖心小熊',[166]='星月小梦',[167]='星团公主 波莉',[168]='版本过低',[169]='魂羽歌者 莺初',[170]='版本过低',[171]='弥梦帝君 空侯',[172]='倪羽儿',[173]='谢知礼',[174]='驱魔人 开斯特',[175]='奥利维亚',[176]='黑猫 幽娜   ',[177]='蜘蛛王子 安德鲁  ',[178]='极兽特工 沃夫·银',[179]='灵公主',[180]='龙空空',[181]='火鸡专家 托克',[182]='草莓酱 贝瑞',[183]='版本过低',[184]='电音天后 莎莎',[185]='仙踪守护者 悠妮  ',[186]='云裳',[187]='元祥儿',[188]='颜廷怀',[189]='舞狮游龙',[190]='蜜多多',[191]='沈一弦',[192]='云胭',[193]='苍鸿',[194]='版本过低',[195]='版本过低',[196]='米兰达   ',[197]='帝皇侠   ',[198]='虎心玉   ',[199]='虎啸丰   ',[200]='艾菲莉   ',[201]='泰林  ',[202]='芙洛丝   ',[203]='霓裳物语',[204]='炎龙侠   ',[205]='版本过低',[206]='版本过低',[207]='版本过低'}


function Main()
--[[迷你号、昵称、角色、装扮]]
local addr=readPointer(so_bss,{344,0},1)
local list=gg.getValue({{addr+0x8,4},{addr+0x48,1},{addr+0x6C,4}})
local name,mnh,role,skin=hqmz(addr+0x49),list[1],list[2],list[3]
if mnh==nil then mnh='无' end
if name==nil then name='' end
if role==0 or role>=#js and role<=#js-42 then role='未知' else role=js[role] end
if skin==0 or skin>=#zb and skin<=#zb-207 then skin='未知' else skin=zb[skin] end
local SN=gg.choice({
'游戏',
'角色：'..role,
'装扮：'..skin,
'退出'},GT or 2018,'迷你号：'..mnh..name)
if SN then GT=SN
if SN==1 then Main_one() end
if SN==2 then typs(js,roles,role,addr+0x48) end
if SN==3 then typs(zb,skins,skin,addr+0x6C) end
if SN==4 then os.exit() end
end
end

function Main_one()
--[[模式、地形码、天数、时间]]
--[[速度、大小、操作模式、挖掘、拾取范围、速度、视角]]
local map,char,acter=readPointer(so_bss,{1023912,288},1),readPointer(so_bss,{6436808,1540},1),readPointer(so_bss,{6436808,1504,1380},1)
local list=gg.getValue({{map,4},{map+0x4,4},{char,4},{char+0x20C,4},{acter,4},{acter+0x4,4}})
local Ter,pat,mnh,act,oper,ani,ion=hqmz(map+0x34),list[1],list[2],list[3],list[4],list[5],list[6]
if mnh==0 then mnh='获取失败' end
if Ter=='* ' then Ter='获取失败' end
if pat>=#ms and pat<=#ms-5 then pat='未知' else pat=ms[pat] end
if act>=#xd and act<=#xd-3  then act='未知' else act=xd[act] end
if oper>=#cz and oper<=#cz-2  then oper='未知' else oper=cz[oper] end
if ani>=#dh and ani<=#dh-19 then ani='未知' else ani=dh[ani] end
if ion>=#dz and ion<=#dz-20 then ion='未知' else ion=dz[ion] end
local SN=gg.choice({
'模式：'..pat,
'行动模式：'..act,
'操作模式：'..oper,
'动画表情：'..ani,
'动作：'..ion,
'返回'
},MT or 2018,'房主：'..mnh..'\n地形码：'..Ter)
if SN then MT=SN
if SN==1 then typs(ms,pats,pat,map) end
if SN==2 then typs(xd,acts,act,char) end
if SN==3 then typs(cz,opers,oper,char+0x20C) end
if SN==4 then typs(dh,anis,ani,acter) end
if SN==5 then typs(dz,ions,ion,acter+0x4) end
if SN==6 then Main() end
end
end

function roles(gn,Dm,role,add)
local type
local GT=gg.choice(gn,R or 2018,'当前角色：'..role..'\n选择修改的角色：')
if GT then R=GT type=Dm[GT]
gg.edits(add,{{type,1,0,true}},js[type]..'使用成功！\n角色')
end
end

function skins(gn,Dm,skin,add)
local type
local GT=gg.choice(gn,Z or 2018,'当前装扮：'..skin..'\n选择修改的装扮：')
if GT then Z=GT type=Dm[GT]
gg.edits(add,{{type,4,0,true}},zb[type]..'使用成功！\n装扮')
end
end

function pats(gn,Dm,pat,add)
local type
local GT=gg.choice(gn,P or 2018,'当前模式：'..pat..'\n选择修改的模式：')
if GT then P=GT type=Dm[GT]
gg.edits(add,{{type,4,0,true}},ms[type]..'模式使用成功！\n模式')
end
end

function opers(gn,Dm,oper,add)
local type
local GT=gg.choice(gn,C or 2018,'当前操作模式：'..oper..'\n选择修改的操作模式：')
if GT then C=GT type=Dm[GT]
gg.edits(add,{{type,4,0,true}},cz[type]..'操作模式使用成功！\n操作模式')
end
end

function acts(gn,Dm,act,add)
local type
local GT=gg.choice(gn,X or 2018,'当前行动模式：'..act..'\n选择修改的行动模式：')
if GT then X=GT type=Dm[GT]
gg.edits(add,{{type,4,0,true}},xd[type]..'模式使用成功！\n行动模式')
end
end

function anis(gn,Dm,ani,add)
local type
local GT=gg.choice(gn,DA or 2018,'当前动画表情：'..ani..'\n选择修改的动画表情：')
if GT then DA=GT type=Dm[GT]
gg.edits(add,{{type,4,0,true}},dh[type]..'表情使用成功！\n动画表情')
end
end

function ions(gn,Dm,ion,add)
local type
local GT=gg.choice(gn,DB or 2018,'当前动作：'..ion..'\n选择修改的动作：')
if GT then DB=GT type=Dm[GT]
gg.edits(add,{{type,4,0,true}},dz[type]..'动作使用成功！\n动作')
end
end
end

function andlua5()  
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("无限跳开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function andlua6()  
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.getResults(100)
v = gg.prompt({i='输入跳跃倍数'}, {i='150'})
gg.editAll(v['i'], 16)
gg.toast("高跳开启成功\n共耗时:"..os.clock()-time.."秒")
end



function andlua7()  
  local Sy={}
  local Cd={"🍑添加坐标🍑","🍉删除坐标🍉️","🍇返回主页🍇"}
  for i,v in ipairs(zb) do
    Cd[#Cd+1]=v[1]
  end
  local GT=gg.choice(Cd,nil,"共有"..#zb.."个坐标")
  if GT==nil then XGCK=-1 else
    if GT==1 then tjzb() end
    if GT==2 then sczb() end
    if GT==3 then Main() end
    if GT>3 then
      sczb(zb[(GT-3)])
    end
  end
 end

function sczb(dd)
  local item={}
  for i,v in ipairs(zb) do
    table.insert(item,v[1])
  end
  local GT=gg.multiChoice(item,nil,"🅰共有"..#zb.."个坐标🅱")
  if GT then
    for i,v in pairs(GT) do
      zb[i]=nil
    end
    local New={}
    for i,v in pairs(zb) do
      table.insert(New,v)
    end
    zb=New
    gg.toast("删除成功\n共耗时:"..os.clock()-time.."秒")
  end
end

function sczb(xyz)
  bgtss("-1F;60D;180D;220D;120D;2F",4,4)
  if getsl()>0 then
    bgtgs("-1",16)
    local value=gg.getResults(1)
    local item={}
    item[1]={}
    item[2]={}
    item[3]={}
    item[1].address=value[1].address+0x1C
    item[1].value=xyz[2]
    item[1].flags=4
    item[2].address=value[1].address+0x20
    item[2].value=xyz[3]
    item[2].flags=4
    item[3].address=value[1].address+0x24
    item[3].value=xyz[4]
    item[3].flags=4
    gg.setValues(item)
    gg.toast("传送成功\n共耗时:"..os.clock()-time.."秒")
  end
end

function tjzb()
  local GT=gg.prompt({"请输入名称"},nil,{"text"})
  if GT then
    bgtss("-1F;60D;180D;220D;120D;2F",4,4)
    if getsl()>0 then
    local value=gg.getResults(1)
    X=readValue(value[1].address+0x1C,4)
    Y=readValue(value[1].address+0x20,4)
    Z=readValue(value[1].address+0x24,4)
    zb[#zb+1]={GT[1],X,Y,Z}
    else
    gg.toast("添加失败\n共耗时:"..os.clock()-time.."秒")
    end
  end
end

function andlua8()
mnsj={}
mnsj.qq=gg.prompt({"横向坐标","高度","竖向坐标"},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq
xc1=mnsj.qq[1].."00"
xc2=mnsj.qq[2].."00"
xc3=mnsj.qq[3].."00"
qmnb = {
{["memory"] = 4},
{["name"] = "改坐标"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = xc1, ["offset"] = 8, ["type"] = 4},
{["value"] = xc2, ["offset"] = 12, ["type"] = 4},
{["value"] = xc3, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)
gg.toast("改坐标开启成功\n共耗时:"..os.clock()-time.."秒")
end
end





function andlua9()
SN = gg.choice({
     "开启崩服",
     "崩服升级",
     "超级崩服(勿用)",
}, nil, "自房对别人有效果.")
if SN==1 then
     E2a1()
end
if SN==2 then
     E2a2()
end
if SN==3 then
     E2a3()
end
FX1=0
end

function E2a1()
function bf(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast("开启失败\n共耗时:"..os.clock()-time.."秒")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
bf(
{
{4},
{"崩服器"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD}, 
},
{
{-10000, 28, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end

function E2a2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777472;16777216;16777472;16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.toast("崩服")
     gg.clearResults()
     Main0()
end

function E2a3()
     function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"崩服器升级"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD},  
},
{
{1000, 32, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
end


function andlua10()
o2 = gg.choice({
    "化石龙",
    "机灵飞鼠",
    "瑞祥麒麟",
    "陆行鸟",
    "大白象",
    "超能海豹",
    "舞狮猫猫",
    "星河天马",
    "桃香扇缘",
    "深渊咆哮",
    "皎月仙宫",
    "冰雪传说",
    "缤纷幻想",
    "福运哞哞",
    "浮游山海",
    "镜花水月",
    "鹿王本身",
    "精灵南瓜车",
    "竹 蜻 蜓",
    "曦光绘梦",
    "裂空机甲",
    "星河机甲",
    "无敌旋风",
    "环海洛洛",
    "东尼洛洛",
    "虚空祖龙",
    "繁花夜明",
    "星月魔毯",
    "自定义坐骑",
    "返 回 脚 本"
  }, nil, "唉...")
  if o2 == 1 then
    o = 3432
    o4()
  end
  if o2 == 2 then
    o = 3435
    o4()
  end
  if o2 == 3 then
    o = 3438
    o4()
  end
  if o2 == 4 then
    o = 3441
    o4()
  end
  if o2 == 5 then
    o = 3444
    o4()
  end
  if o2 == 6 then
    o = 3447
    o4()
  end
  if o2 == 7 then
    o = 3456
    o4()
  end
  if o2 == 8 then
    o = 3459
    o4()
  end
  if o2 == 9 then
    o = 3462
    o4()
  end
  if o2 == 10 then
    o = 3471
    o4()
  end
  if o2 == 11 then
    o = 3480
    o4()
  end
  if o2 == 12 then
    o = 3485
    o4()
  end
  if o2 == 13 then
    o = 3487
    o4()
  end
  if o2 == 14 then
    o = 3489
    o4()
  end
  if o2 == 15 then
    o = 3492
    o4()
  end
  if o2 == 16 then
    o = 3497
    o4()
  end
  if o2 == 17 then
    o = 4503
    o4()
  end
  if o2 == 18 then
    o = 4507
    o4()
  end
  if o2 == 19 then
    o = 4510
    o4()
  end
  if o2 == 20 then
    o = 4515
    o4()
  end
  if o2 == 21 then
    o = 4518
    o4()
  end
  if o2 == 22 then
    o = 4521
    o4()
  end
  if o2 == 23 then
    o = 4523
    o4()
  end
  if o2 == 24 then
    o = 4526
    o4()
  end
  if o2 == 25 then
    o = 4529
    o4()
  end
  if o2 == 26 then
    o = 4533
    o4()
  end
  if o2 == 27 then
    o = 4537
    o4()
  end
  if o2 == 28 then
    o = 4541
    o4()
  end
  if o2 == 29 then
    zdy()
  end
  XGCK = -1
end

function zdy()
  aba6 = gg.prompt({"请输入坐骑代码"}, {
    [1] = 4526
  }, {
    [1] = "number"
  })[1]
  qmnb = {
    {memory = 4},
    {name = "坐骑"},
    {value = 4842495500454461440, type = 32},
    {
      lv = 1127481344,
      offset = 4,
      type = 4
    },
    {
      lv = 1106247680,
      offset = 20,
      type = 4
    },
    {
      lv = 1065353216,
      offset = 80,
      type = 4
    },
    {
      lv = 1065353216,
      offset = -8,
      type = 4
    }
  }
  qmxg = {
    {
      value = aba6,
      offset = 212,
      type = 4,
      freeze = true
    },
    {
      value = 16777472,
      offset = -52,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
gg.toast("自定义召唤开启成功\n共耗时:"..os.clock()-time.."秒")
end

function o4()
  qmnb = {
    {memory = 4},
    {name = "坐骑"},
    {value = 4842495500454461440, type = 32},
    {
      lv = 1127481344,
      offset = 4,
      type = 4
    },
    {
      lv = 1106247680,
      offset = 20,
      type = 4
    },
    {
      lv = 1065353216,
      offset = 80,
      type = 4
    },
    {
      lv = 1065353216,
      offset = -8,
      type = 4
    }
  }
  qmxg = {
    {
      value = o,
      offset = 212,
      type = 4,
      freeze = true
    },
    {
      value = 16777472,
      offset = -52,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
gg.toast("坐骑修改成功\n共耗时:"..os.clock()-time.."秒")
end

function andlua11()
gg.alert("跑路北原创，1.9.0版本可强制踢走哦!")
lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults
function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end
function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end
function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end
local tp for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  tp=1 break end end 
if tp then else so({"获取迷你号",1701593942,4,4},{{774993416,0xFC}},{{nil,0,4,2}}) end
local tf for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  mkl=gg.getValues({{address=v.address+0x174,flags=v.flags}}) mnh=mkl[1].value tf=1 break end end if tf then if mnh==0 then Mcn=io.open("/storage/emulated/0/.迷你号", "rb") if Mcn == nil then a="暂未获取迷你号" else  a=io.open("/storage/emulated/0/.迷你号","r"):read("*a")  end else io.open("/storage/emulated/0/.迷你号","w"):write(mnh):close() a = io.open("/storage/emulated/0/.迷你号","r"):read("*a")  end else  Mcn=io.open("/storage/emulated/0/.迷你号", "rb")  if Mcn == nil then a="暂未获取迷你号" else a=io.open("/storage/emulated/0/.迷你号","r"):read("*a")   end end
Aa2=gg.prompt({"输入你要踢的人的迷你号"},{},{"number"})
if Aa2 then
local uyq for i,v in ipairs(gg.getListItems())do if v.value==3441 then uyq=1  break end end if uyq then else gg.toast(so({"坐骑",4842495500454461440,4,32},{{1127481344,4,4},{1106247680,0x1C,4},{1065353216,-0x8,4},{"16777216~16777472",-0x3C,4}},{{3441,0x120,4,1},{16777472,-0x3C,4,1}})) end
local tpw for i,v in ipairs(gg.getListItems())do if v.value==11522 then tpw=1 break end end if tpw then else so({"获取玩家迷你号",11522,4,4},{{11014,4}},{{nil,0,4,1}}) end
local tuf for i,v in ipairs(gg.getListItems())do if v.value==11522 then  hjp=gg.getValues({{address=v.address+0x14,flags=v.flags}}) mkq=hjp[1].value tuf=1 break end end  
if tuf then so({"踢玩家",a,4,4},{{mkq,0x10}},{{Aa2[1],0,4}}) gg.alert("5秒内召唤第1格坐骑") gg.sleep(5000) 
so({"踢玩家关闭",Aa2[1],4,4},{{mkq,0x10}},{{a,0,4}}) gg.toast("踢玩家开启成功\n共耗时:"..os.clock()-time.."秒") end
end
end






function andlua12()
gg.alert("输入房主号，按第一格坐骑，房主就无了")
a = gg.prompt({"『输入房主迷你号』"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "先打开一次坐骑面板"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 3441, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "踢房主第一步"},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4},
}
xqmnb(qmnb)

gg.sleep(3000)
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主弟二步"},
{["value"] =a , ["type"] = 4},
{["lv"] = zh, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] = a, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.toast("踢房主注入病毒成功\n共耗时:"..os.clock()-time.."秒")
end





function andlua13()
qmnb = {
{["memory"] = 4},
{["name"] = "金镐子无需蓄力"},
{["value"] = 1060320051, ["type"] = 4},
{["lv"] = 65538, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 12, ["type"] = 16}
}
qmxg = {
{["value"] = 0.1, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("冷却时间修改成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua14()  
SN=gg.multiChoice({
'云服1开密码1',
'云服1无密码',
'关闭云服1',
'开启云服1',
'重启云服1',
'云服1维护',
'云服1解除维护',
'开启云服6',
'关闭云服6',
'重启云服6',
'返回功能',})
if(SN)==nil then else
if SN[1] ==true then aa1() end
if SN[2] ==true then aa2() end
if SN[3] ==true then aa3() end
if SN[4] ==true then aa4() end
if SN[5] ==true then aa5() end
if SN[6] ==true then aa6() end
if SN[7] ==true then aa7() end
if SN[8] ==true then aa8() end
if SN[9] ==true then aa9() end
if SN[10] ==true then aa10() end
if SN[11] ==true then Main() end
end GLWW=-1 end

function aa1()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGalHoN7LXhGa1fARTgqHwhIHPqwcm3Qp232NFO6Nm3QNG32rm3gNG3QNG3g9m3gym3QNGOxy2O6NF3QNmOxymOxp2aBvoNqv4fGy1Oxy4WGa4QSa1VXaiyGy4H7yjVXy7Wlp2ajL588sXYhyPy6y73FaPWxNmafZPqwc4WXy7dlNjOANjsiHo3fZ1flp4sGH4wjNj9jp5Hly1OqajRFNjR8p4r7HiajH7R8NFa7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=36929").content
gg.toast("云服1开密码1开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa2()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGalHoN7LXhGa1fisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4dly1YAy4yMyjdXH7Y7NiyANjyGy1H7y4V6RiNfZ5Q7Z1fGp43jyjgwa1gFRT9UvPOhy4H7yjVXN4WANFa8Lo9kcPyAa1rXa4NFHPyxN4WMN1YXy7H6a1YxH7Q8H7dAajHlRTyGL1fANjyGy1H7y4VXRT3UvjfAyjyfNmaXaodhym6f0jWiHogUZPrhymaEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=7e83f").content
gg.toast("云服1无密码开启成功\n共耗时:"..os.clock()-time.."秒")
end



function aa3()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGa7L5Qfc4VisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4WqNjyAyP9SN53Sp4VGN4HANjyGy1H7y4V6RiNfZ5Q7Z1qjy5QSaPr6aj3wRT9UvPOhy4H7yjVXN1HMyma8Lo9kc48jHXdXyXy7pPHXajylyX3iy1Wfa53FN7d7aPy6NPRSRTyGL1fANjyGy1H7y4VXRT3UvjfAyjyfNmaXaodhym6f0jWiHogUZPrhymaEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=e2302").content
gg.toast("关闭云服1开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa4()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGa7L5Qfc4WisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4Wqp4sAyPyMa1QiH4Q8NiHANjyGy1H7y4V6RiNfZ5Q7Z1fxHiNSH4y7NjaFRT9UvPOhy4H7yjVXN1slNma8Lo9kc4y6y1dMHXOfH49iN5RFN7SlHXOlH4VGNXR8H4Oxy138RTyGL1fANjyGy1H7y4VXRT3UvjfAyjyfNmaXaodhym6f0jWiHogUZPrhymaEHPxTc4ViHXhqvT9Ge4q14Fa7NXOhyr__&s7t=9ae63").content
gg.toast("开启云服1开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa5()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaJs1qGaoNfHoRfRTRJvXqCZPrhymafZPqwc4WXy7dlNjrMN1siHo3fZ1qFNPawy1VMa1R8H4s6H7sxN49jN1yqHPR8p1d7H4dAyGa7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=cc243").content
gg.toast("重启云服1开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa6()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGaBHPwIL5QUvjfARTgqHwhIHPqwcm3Qp232NFO6Nm3QNG32rm3gNG3QNG3g9m3gym3QNGOxy2O6NF3QNmOxymOxp2aBvoNqv4fANjYAy4W6a5WqN1VAyPaiy4H7yjVXy7Wlp2ajL588sXYhN4VMpPOlp1a8aFafZPqwc4WXy7dlNjrMp1SiHo3fZ1f6a4V7p4yAa1y6H4dfpPy7N5HfyPdxp53SH4SXaP9SNma7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=7b3c1").content
gg.toast("云服1维护开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa7()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4WivMVhZPxivGaBHPwIL5QUvjflRTgqHwhIHPqwcm3Qp232NFO6Nm3QNG32rm3gNG3QNG3g9m3gym3QNGOxy2O6NF3QNmOxymOxp2aBvoNqv4fAN7rGy4Wqp1SqN1RFy4aSy4H7yjVXy7Wlp2ajL588sXYhyXrfN73Fy7g8y2afZPqwc4WXy7dlNjr6N4ViHo3fZ1qFpPWXyXRSNPR8aiQwHPH7y1R8y7sMH7d7Hj8wyjOfyGa7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=44f26").content
gg.toast("云服1解除维护开启成功\n共耗时:"..os.clock()-time.."秒")
end


function aa8()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4HivMVhZPxivGa7L5Qfc4WisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4OqN7WAHjY6yPH7N7sGp4WXy7dlNjyAy1YiHM9kHoNkc4wFHX98y7yXNidiL5wBa4fANjyGy1H7NjHqRiQqL5Yhyir6yjyGyXaFpPOlp4y7N1Oxp49wyjO7aPHGy19wN4Wis7Rfc4WXy7dlNjyAy1HiLPwIc4WGy7rqRTawsjfA0jrIyma8s5wUa1fARiA8vishy2ajvM3ILKRxcONpRTyMa4fA&s7t=b57a2").content
gg.toast("开启云服6开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa9()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaGvXhBoXwSc4HivMVhZPxivGa7L5Qfc4VisK3FoXx8vPOhROO6ROdXR4YqROOMRORgROWMROOMROQQROWAROOMR4SlR4YXROOqR4SAR4S6RiqBsM3Bc4y7y1WAN5rfHir7yj88HjWXy7dlNjyAy1YiHM9kHoNkcPylHP9wa18iNPOiL5wBa4fANjyGy1H7N1y6RiQqL5Yhp1d6p1sxH7YMy1OGa5QSN4VXHPdqyiNSaiOMyP9FH4Vis7Rfc4WXy7dlNjyAy1HiLPwIc4WGy7rqRTawsjfA0jrIyma8s5wUa1fARiA8vishy2ajvM3ILKRxcONpRTyMa4fA&s7t=9e079").content
gg.toast("关闭云服6开启成功\n共耗时:"..os.clock()-time.."秒")
end

function aa10()
local zctij = gg.makeRequest("http://shequ.mini1.cn:8087/miniw/rent_server?s7=HPNfcoNwLK9UviLCsihJvmaJs1qGaoNfHoRfRTRJvXqCZPrhNFafZPqwc4WXy7dlNjyxp1HiHo3fZ1qia5R8N1g8ajwwH4OAa4R8aPd6NiWAN4Q8NjylN4sxpma7yTrhy4H7yjVXy7WlNFaqZP6hy4d7N1OiLi3Gc4WIN26ARiQlZPwSc4Wiv5QIa7flRiNJLPxfsTShrf6is7Lwc4W_&s7t=b31a4").content
gg.toast("重启云服6开启成功\n共耗时:"..os.clock()-time.."秒")
end



function andlua15()  
qmnb = {
{["memory"] = 16384},
{["name"] = "人物浮空"},
{["value"] = 4.0, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("人物浮空开启成功\n共耗时:"..os.clock()-time.."秒")
end



function andlua16()  
gg.clearResults()
sviplualhc = gg.prompt({"请输入你当前头像.[清凉一夏:20222]([头像框永久]20201-头像框-单身汪，[头像框永久]20202-头像框-莉莉丝，[头像框永久]20203-头像框-鬼斧神工，[头像框永久]20204-头像框-绘影大师，[头像框永久]20205-头像框-建筑大师，[头像框永久]20206-头像框-漫画大师，[头像框永久]20207-头像框-明日之星，[头像框永久]20208-头像框-写作大师，[头像框永久]20209-头像框-宣传委员，[头像框永久]20210-头像框-迷你主播，[头像框永久]20211-头像框-工坊管家，[头像框永久]20212-头像框-志愿者，[头像框永久]20213-头像框-2017，[头像框永久]20214-头像框-二郎神，[头像框永久]20215-头像框-招财猫，[头像框永久]20216-头像框-环保筑梦师，[头像框永久]20217-头像框-迷你世界2周年，[头像框永久]20218-头像框-小船长，[头像框永久]20219-头像框-劳动节，[头像框永久]20220-头像框-鉴赏家，[头像框永久]20221-头像框-儿童节，[头像框永久]20222-头像框-清凉一夏，[头像框永久]20223-头像框-花好月圆，[头像框永久]20224-头像框-侠客之心，[头像框永久]20225-头像框-护眼行动，[头像框永久]20226-头像框-小恶魔，[头像框永久]20227-头像框-圆桌骑士，[头像框永久]20228-头像框-圣诞节，[头像框永久]20229-头像框-2018，[头像框永久]20230-头像框-赛事成就，[头像框永久]20231-头像框-斩浪，[头像框永久]20232-头像框-迷你世界3周年，[头像框永久]20233-头像框-世界守护计划专属，[头像框永久]20234-头像框-初级大神，[头像框永久]20235-头像框-中级大神，[头像框永久]20236-头像框-高级大神，[头像框永久]20237-头像框-复活节，[头像框永久]20238-头像框-友谊之手，[头像框永久]20239-头像框-端午节，[头像框永久]20240-头像框-读书万卷，[头像框永久]20241-头像框-东部联盟，[头像框永久]20242-头像框-西部联盟，[头像框永久]20243-头像框-迷你编程，[头像框永久]20244-头像框-920全民创造节，[头像框永久]20245-头像框-乔克，[头像框永久]20246-头像框-圣诞心意，[头像框永久]20247-头像框-2019年度头像框，[头像框永久]20248-头像框-慕斯，[头像框永久]20249-头像框-金鼠贺岁，[头像框永久]20250-头像框-龙凤呈祥，[头像框永久]20251-头像框-喜团团，[头像框永久]20252-头像框-雪豹守护者，[头像框永久]20253-头像框-迷你4周年，[头像框永久]20254-头像框-齐天小圣，[头像框永久]20255-头像框-繁星共创营，[头像框永久]20256-头像框-甜棕拥护者，[头像框永久]20257-头像框-咸棕拥护者，[头像框永久]20258-头像框-阳光守护，[头像框永久]20259-玩法大作战专属，[头像框永久]20260-抖音专属头像框，[头像框永久]20261-玉兔心愿，[头像框永久]20262-QQ版专属头像框，[头像框永久]20263-慧眼达人，[头像框永久]20264-2020，[头像框永久]20265-2020，[头像框永久]20266-冬之声，[头像框永久]20267-梅之影，[头像框永久]20268-圣诞雪松[头像框永久]20269-雨林征服者，[头像框永久]20270-金牛贺岁，[头像框永久]20271-官版专属头像框，[头像框永久]20272-星光同在，[头像框永久]20273-天籁之窗，[头像框永久]20274-2020人气作者，[头像框永久]20275-2020新锐作者，[头像框永久]20276-2020优秀作者，[头像框永久]20277-金符星球，[头像框永久]20278-蓝电石星球，[头像框永久]20279-梦幻星球，[头像框永久]20280-海焰星球，[头像框永久]20281-绮丽星球，[头像框永久]20282-守望敦煌，[头像框永久]20283-迷你世界5周年，[头像框永久]20284-可爱猫咪，[头像框永久]20285-秋田&柴犬，[头像框永久]20286-福气猫头鹰，[头像框永久]20287-智慧狐狸，[头像框永久]20288-憨憨熊猫，[头像框永久]20289-花之时，[头像框永久]20290-复苏之声，[头像框永久]20291-踏春出游，[头像框永久]20292-妙妙，[头像框永久]33001-樱桃，[头像框永久]33002-旧城，[头像框永久]33003-粉咩羊，[头像框永久]33004-萌虎妹，[头像框永久]33005-墨道，[头像框永久]33006-糖果团，[头像框永久]33007-小烤拉，[头像框永久]33008-小仙仙，[头像框永久]33009-羊家堡，[头像框永久]33010-忆涵，[头像框永久]33023-脆脆法棒，[头像框永久]33024-鲜甜蘑菇)"}
,{[1]=20222},{[1]="number"})[1]
lhcyyds = gg.prompt({"输入你要改的头像框代码[头像框永久]20201-头像框-单身汪，[头像框永久]20202-头像框-莉莉丝，[头像框永久]20203-头像框-鬼斧神工，[头像框永久]20204-头像框-绘影大师，[头像框永久]20205-头像框-建筑大师，[头像框永久]20206-头像框-漫画大师，[头像框永久]20207-头像框-明日之星，[头像框永久]20208-头像框-写作大师，[头像框永久]20209-头像框-宣传委员，[头像框永久]20210-头像框-迷你主播，[头像框永久]20211-头像框-工坊管家，[头像框永久]20212-头像框-志愿者，[头像框永久]20213-头像框-2017，[头像框永久]20214-头像框-二郎神，[头像框永久]20215-头像框-招财猫，[头像框永久]20216-头像框-环保筑梦师，[头像框永久]20217-头像框-迷你世界2周年，[头像框永久]20218-头像框-小船长，[头像框永久]20219-头像框-劳动节，[头像框永久]20220-头像框-鉴赏家，[头像框永久]20221-头像框-儿童节，[头像框永久]20222-头像框-清凉一夏，[头像框永久]20223-头像框-花好月圆，[头像框永久]20224-头像框-侠客之心，[头像框永久]20225-头像框-护眼行动，[头像框永久]20226-头像框-小恶魔，[头像框永久]20227-头像框-圆桌骑士，[头像框永久]20228-头像框-圣诞节，[头像框永久]20229-头像框-2018，[头像框永久]20230-头像框-赛事成就，[头像框永久]20231-头像框-斩浪，[头像框永久]20232-头像框-迷你世界3周年，[头像框永久]20233-头像框-世界守护计划专属，[头像框永久]20234-头像框-初级大神，[头像框永久]20235-头像框-中级大神，[头像框永久]20236-头像框-高级大神，[头像框永久]20237-头像框-复活节，[头像框永久]20238-头像框-友谊之手，[头像框永久]20239-头像框-端午节，[头像框永久]20240-头像框-读书万卷，[头像框永久]20241-头像框-东部联盟，[头像框永久]20242-头像框-西部联盟，[头像框永久]20243-头像框-迷你编程，[头像框永久]20244-头像框-920全民创造节，[头像框永久]20245-头像框-乔克，[头像框永久]20246-头像框-圣诞心意，[头像框永久]20247-头像框-2019年度头像框，[头像框永久]20248-头像框-慕斯，[头像框永久]20249-头像框-金鼠贺岁，[头像框永久]20250-头像框-龙凤呈祥，[头像框永久]20251-头像框-喜团团，[头像框永久]20252-头像框-雪豹守护者，[头像框永久]20253-头像框-迷你4周年，[头像框永久]20254-头像框-齐天小圣，[头像框永久]20255-头像框-繁星共创营，[头像框永久]20256-头像框-甜棕拥护者，[头像框永久]20257-头像框-咸棕拥护者，[头像框永久]20258-头像框-阳光守护，[头像框永久]20259-玩法大作战专属，[头像框永久]20260-抖音专属头像框，[头像框永久]20261-玉兔心愿，[头像框永久]20262-QQ版专属头像框，[头像框永久]20263-慧眼达人，[头像框永久]20264-2020，[头像框永久]20265-2020，[头像框永久]20266-冬之声，[头像框永久]20267-梅之影，[头像框永久]20268-圣诞雪松[头像框永久]20269-雨林征服者，[头像框永久]20270-金牛贺岁，[头像框永久]20271-官版专属头像框，[头像框永久]20272-星光同在，[头像框永久]20273-天籁之窗，[头像框永久]20274-2020人气作者，[头像框永久]20275-2020新锐作者，[头像框永久]20276-2020优秀作者，[头像框永久]20277-金符星球，[头像框永久]20278-蓝电石星球，[头像框永久]20279-梦幻星球，[头像框永久]20280-海焰星球，[头像框永久]20281-绮丽星球，[头像框永久]20282-守望敦煌，[头像框永久]20283-迷你世界5周年，[头像框永久]20284-可爱猫咪，[头像框永久]20285-秋田&柴犬，[头像框永久]20286-福气猫头鹰，[头像框永久]20287-智慧狐狸，[头像框永久]20288-憨憨熊猫，[头像框永久]20289-花之时，[头像框永久]20290-复苏之声，[头像框永久]20291-踏春出游，[头像框永久]20292-妙妙，[头像框永久]33001-樱桃，[头像框永久]33002-旧城，[头像框永久]33003-粉咩羊，[头像框永久]33004-萌虎妹，[头像框永久]33005-墨道，[头像框永久]33006-糖果团，[头像框永久]33007-小烤拉，[头像框永久]33008-小仙仙，[头像框永久]33009-羊家堡，[头像框永久]33010-忆涵，[头像框永久]33023-脆脆法棒，[头像框永久]33024-鲜甜蘑菇"}
,{[1]=20281},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "自定义改头像框"},
{["value"] = sviplualhc, ["type"] = 4},
{["lv"] = sviplualhc, ["offset"] = 0, ["type"] = 4},
{["lv"] = sviplualhc, ["offset"] = 0, ["type"] = 4},
}
qmxg = {
{["value"] = lhcyyds, ["offset"] = 0, ["type"] = 4},
{["value"] = lhcyyds, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("头像框修改成功\n共耗时:"..os.clock()-time.."秒")
end







function andlua17()  
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
gg.toast("伪房主开启成功\n共耗时:"..os.clock()-time.."秒")
end



function andlua18()
 lhc = gg.prompt({"输入服主的迷你号"}
,{[1]=12345},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "服主"},
{["value"] =lhc, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] =32767, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = sviplhc, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
gg.toast("伪服主开启成功\n共耗时:"..os.clock()-time.."秒")
end

function andlua19()
qmnb = {
{["memory"] = 4},
{["name"] = "秒拆方块开启"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 15, ["offset"] = -28, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -48, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -52, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("秒拆方块开启成功\n共耗时:"..os.clock()-time.."秒")
end




function andlua20()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3.02258117e-38F;1.51900754e-42F;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
	 end
	 gg.toast("屏幕旋转开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end


function andlua21()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("能量剑强化成功\n共耗时:"..os.clock()-time.."秒") 
end

function andlua22()
F = gg.alert("请选择｛开 关｝","开","关️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7.75559786e-19F;3.20297985e-38F;0.60000002384F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
gg.toast("瞬移开启成功\n共耗时:"..os.clock()-time.."秒")	 
	 end
 elseif  F== 2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7.75559786e-19F;3.20297985e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.60000002384}})
gg.toast("瞬移恢复成功\n共耗时:"..os.clock()-time.."秒") 	 
end
end
end


function andlua23()
local qmnb={
{["memory"]=4},
{["name"]="飞行按键"},
{["value"]=-180.0,["type"]=16},
{["lv"]=-20.0,["offset"]=-4,["type"]=16},
{["lv"]=84.0,["offset"]=-28,["type"]=16},
}
qmxg={
{["value"]=16777472,["offset"]=-92,["type"]=4,["freeze"]=true},
}
xqmnb(qmnb)
gg.toast("飞行按键开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end


function andlua24()
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=945804388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
    gg.setRanges(4) --内存
    local tb1 = {{1116078080,0}, {1024, 88},}  
    local tb2 = {{16777472, 328},}
    local dataType = 4 --类型
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end

function andlua25()
y = gg.prompt({"输入2恢复，输入3可以踢人』"}
,{[1]=3},{[1]="number"})
if not y then return end
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11014, ["type"] = 4},
{["lv"] = 11522, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"] = y[1], ["offset"] = 32, ["type"] = 4},}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end

function andlua26()
gg.clearResults()
F = gg.alert("请选择开关()","开","关")
if  F== 1 then
 WJ = gg.prompt({"输入别人的迷你号"},
{[1] = ""},{[1]= "number"})
if not WJ then return end
qmnb = {
{["memory"] = 4},
{["name"] = "伤害转移"},
{["value"] =1117126656 , ["type"] = 4},
{["lv"] = 256, ["offset"] = -0x24, ["type"] = 4},
{["lv"] = 65793, ["offset"] = -0x6C, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -0x64, ["type"] = 16},
}
qmxg = {
{["value"] =WJ[1], ["offset"] = -180,["type"] = 4,["freeze"] = true},
{["value"] =257, ["offset"] = -0x144,["type"] = 4,["freeze"] = true},
{["value"] =2, ["offset"] = -0x148,["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()

elseif F == 2 then
 qmnb = {
{["memory"] = 4},
{["name"] = "伤害转移"},
{["value"] =1117126656 , ["type"] = 4},
{["lv"] = 256, ["offset"] = -0x24, ["type"] = 4},
{["lv"] = 65793, ["offset"] = -0x6C, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -0x64, ["type"] = 16},
}
qmxg = {
{["value"] =0, ["offset"] = -180,["type"] = 4,["freeze"] = false},
{["value"] =1, ["offset"] = -0x144,["type"] = 4,["freeze"] = false},
{["value"] =1, ["offset"] = -0x148,["type"] = 4,["freeze"] = false},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end
end

function andlua27()
QWEE2 = gg.choice({
    '  𒅒欢呼功作𒅒',--9
    '  𒅒飘浮动作𒅒',--10
    '  𒅒跳舞动作𒅒',--11
    '  𒅒抱坐动作𒅒',--12
    '  𒅒睡觉动作𒅒',--13
    '  𒅒摸空气动作️𒅒',--14
    '  𒅒发骚动作𒅒',--15
    '  𒅒死亡动作️𒅒',--16
    '  𒅒原地游泳️𒅒',--18
    '  𒅒️原地踏步️𒅒',--19
    '  𒅒原地定坐️𒅒',--20
    '  𒅒摆手臂动作️𒅒',--21
    '  𒅒展开手臂动作️𒅒',--22
    '  𒅒️滑铲动作𒅒',--23
    '  𒅒倒地动作𒅒',--23
    '  𒅒恢复动作𒅒',--24
    '  𒅒返 回 主 页𒅒',
    },2022,os.date('我愿意把一切都给你-阿鹤随机一言'))
if QWEE2==1 then Q3=21 QQQ3() end
if QWEE2==2 then Q3=34 QQQ3() end
if QWEE2==3 then Q3=15 QQQ3() end
if QWEE2==4 then Q3=54 QQQ3() end
if QWEE2==5 then Q3=9 QQQ3() end
if QWEE2==6 then Q3=52 QQQ3() end
if QWEE2==7 then Q3=96 QQQ3() end
if QWEE2==8 then Q3=3 QQQ3() end
if QWEE2==9 then Q3=11 QQQ3() end
if QWEE2==10 then Q3=1 QQQ3() end
if QWEE2==11 then Q3=35 QQQ3() end
if QWEE2==12 then Q3=64 QQQ3() end
if QWEE2==13 then Q3=67 QQQ3() end
if QWEE2==14 then Q3=20 QQQ3() end
if QWEE2==15 then Q3=22 QQQ3() end
if QWEE2==16 then Q3=-1 QQQ3() end
if QWEE2==17 then az() end
XGCK=-1 end

function QQQ3() 
qmnb = {
{["memory"] = 4},
{["name"] = "动作"},
{["value"] = zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},}
qmxg = {
{["value"] = Q3, ["offset"] = -76, ["type"] = 4},
}
gg.toast("动作开启成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
end

function andlua28()
maqw = gg.choice({
    '  𒅒🍥紫色月亮🍥𒅒',--1
    '  𒅒🍥金色特效🍥𒅒',--2
    '  𒅒🍥绿色特效🍥𒅒',--3
    '  𒅒🍥彩虹拖尾🍥𒅒  ',--4
    '  𒅒🍥️蓝色特效🍥𒅒',--5
    '  𒅒🍥花小楼特效🍥𒅒',--6
    '  𒅒🍥冰公主特效🍥𒅒',--7
    '  𒅒🍥初暮特效🍥𒅒',--8
    '  𒅒🍥️恢 复 特 效🍥𒅒',--9
    '  𒅒🎡返 回 主 页🎡𒅒',
    },2018,os.date('🍡其实地上本无路，走的人多了，也便成了路🍡'))
if maqw==1 then Q1=12 QQ1() end
if maqw==2 then Q1=11 QQ1() end
if maqw==3 then Q1=14 QQ1() end
if maqw==4 then Q1=15 QQ1() end
if maqw==5 then Q1=16 QQ1() end
if maqw==6 then Q1=17 QQ1() end
if maqw==7 then Q1=18 QQ1() end
if maqw==8 then Q1=19 QQ1() end
if maqw==9 then Q1=-1 QQ1() end
if maqw==10 then az() end
XGCK=-1 end

function QQ1()  
qmnb = {
{["memory"] = 4},
{["name"] = "特效"},
{["value"] = 1117126656, ["type"] = 4},
{["lv"] = 257, ["offset"] = 0x1C4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x10, ["type"] = 4},
{["lv"] = 20, ["offset"] = 0x8, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = -0x294, ["type"] = 4},
}
qmxg = {
{["value"] = Q1, ["offset"] = 0x74, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("特效开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua29()
MJY = gg.choice({
    '  𒅒🧊妙妙🧊𒅒',--1
    '  𒅒🧊璎落🧊𒅒',--2
    '  𒅒🧊雷光🧊𒅒',--3
    '  𒅒🧊秋果🧊𒅒  ',--4
    '  𒅒🧊️凛冬🧊𒅒',--5
    '  𒅒🧊哈鲁🧊𒅒',--6
    '  𒅒🧊临江仙－颂🧊𒅒',--7
    '  𒅒🧊苍鸿🧊𒅒',--8
    '  𒅒🧊云胭🧊𒅒',--9
    '  𒅒🧊自定义🧊𒅒',--10
    '  𒅒🎡返 回 主 页🎡𒅒',
    },2022,os.date('🍡选择使用的皮肤，开启成功后切换角色🍡'))
if MJY==1 then aba2=121 pf1() end
if MJY==2 then aba2=146 pf1() end
if MJY==3 then aba2=147 pf1() end
if MJY==4 then aba2=140 pf1() end
if MJY==5 then aba2=148 pf1() end
if MJY==6 then aba2=136 pf1() end
if MJY==7 then aba2=109 pf1() end
if MJY==8 then aba2=193 pf1() end
if MJY==9 then aba2=192 pf1() end
if MJY==10 then pf2() end
if MJY==11 then az() end
XGCK=-1 end

function pf1()
aba3 = gg.prompt({"输入你正使用的皮肤"..pfdm}
,{[1]=""},{[1]="number"})
if not aba3 then return end
qmnb = {
{["memory"] = 4},
{["name"] = "联机皮肤"},
{["value"] = aba2, ["type"] = 64},
{["lv"] = 4, ["offset"] = -16, ["type"] = 4},
{["lv"] = 4, ["offset"] = 64, ["type"] = 4},
{["lv"] = 4, ["offset"] = 24, ["type"] = 4},
{["lv"] = 3, ["offset"] = 8, ["type"] = 4},

{["lv"] = 5, ["offset"] = -0x70, ["type"] = 4},
}
qmxg = {
{["value"] = aba3[1], ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end
function pf2()
ab2 = gg.prompt({"输入你正在使用的皮肤序号尽量选比较高的   106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀   123时希    124洁莉      125快客小窝     126野人    127黑天鹅   128青蛙王子   130白雪公主     131汉森      132格雷特     136哈鲁    138春雨  139青夏  140秋果      141小蓝    142童梦仙踪   143凌美琪     144凌美雪     145游乐王子    146璎落      147雷光    148凛冬       149珍奇女孩   150苹果嘉儿女孩  151阿拉灯     152匹诺曹      153塔莎  154殷小敏    155施巧灵   156彩俐公主   158络特   159瑶月仙子   160玉团儿      161号手妮塔  162鼓手尼普    163龙响无双     164拾玖 165糖心小熊   166星月小梦 167星团公主玻璃  169莺初   171空候  172倪羽儿   173谢知礼   174开斯特    175奥利维亚  178极兽特工沃夫•银   179灵公主  180龙空空 181火鸡专家托克 182贝瑞 184莎莎  186云裳   187元祥儿  188颜廷怀  189舞狮游龙  190蜜多多  191沈一弦  192云胭   193苍鸿   196米兰达   197帝皇侠   198虎心玉   199虎啸丰   200艾利菲  201泰森  202芙洛丝"}
,{[1]=""},{[1]="number"})
if not ab2 then return end
aba3 = gg.prompt({"输入你要使用的皮肤序号"..pfdm}
,{[1]=""},{[1]="number"})
if not aba3 then return end
qmnb = {
{["memory"] = 4},
{["name"] = "联机皮肤"},
{["value"] = ab2[1], ["type"] = 64},
{["lv"] = 4, ["offset"] = -16, ["type"] = 4},
{["lv"] = 4, ["offset"] = 64, ["type"] = 4},
{["lv"] = 4, ["offset"] = 24, ["type"] = 4},
{["lv"] = 3, ["offset"] = 8, ["type"] = 4},

{["lv"] = 5, ["offset"] = -0x70, ["type"] = 4},
}
qmxg = {
{["value"] = aba3[1], ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end

function andlua30()
SN = gg.multiChoice({
	 "【野人掉落999星星】",
	 "【熔岩巨人掉落999星星】",
	 "【猪掉落999星星】",
	 "【牛掉落999星星】",
	 "【鸡掉落999星星】",
	 "【狼掉落999星星】",
	 "【返回主界面】",
}, nil, "阿鹤爱你们，原创白九.")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS38()
end
if SN[3]==true then
	 HS3()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS21()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;12526;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;11310;21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3402;12522;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3407;11307;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function andlua31()
qmnb = {
{["memory"] = 4},
{["name"] = "连跳飞天"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 0x12C, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 0x70, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("无限跳开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua32()
qmnb = {
{["memory"] = 4},
{["name"] = "小淘气二段跳"},
{["value"] = 796488809, ["type"] = 4},
{["lv"] = 1117126656, ["offset"] = 0x9C, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 20, ["offset"] = 0xA4, ["type"] = 4},
{["lv"] = 257, ["offset"] = 0x260, ["type"] = 4},
{["lv"] = -9999, ["offset"] = 0x250, ["type"] = 4},
}
qmxg = {
{["value"] = 42, ["offset"] = 0x228, ["type"] = 4},

}
xqmnb(qmnb)
gg.toast("小淘气二段跳开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end

function andlua33()
AsD= gg.choice({
    "𒅒🧊二 胡🧊𒅒",
    "𒅒🧊古 筝🧊𒅒",
    "𒅒🧊唢 呐🧊𒅒",
    "𒅒🧊琵 琶🧊𒅒",
    "𒅒🧊笛 子🧊𒅒",    
    "𒅒🧊️鼓🧊𒅒",
    "𒅒🧊篮 球 衣🧊𒅒",
    "𒅒🧊足 球 衣🧊𒅒",
    "𒅒🧊能 量 剑🧊𒅒",
    "𒅒🧊地形编辑器🧊𒅒",
    "𒅒🧊自定义🧊𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒修改完后，从背包拿喷漆罐𒅒"))
if AsD==1 then QWER=11900 ZZZZqq() end
if AsD==2 then QWER=11905 ZZZZqq() end
if AsD==3 then QWER=11906 ZZZZqq() end
if AsD==4 then QWER=11907 ZZZZqq() end
if AsD==5 then QWER=11908 ZZZZqq() end
if AsD==6 then QWER=11909 ZZZZqq() end
if AsD==7 then QWER=12820 ZZZZqq() end
if AsD==8 then QWER=12821 ZZZZqq() end
if AsD==9 then QWER=12005 ZZZZqq() end
if AsD==10 then QWER=10500 ZZZZqq() end
if AsD==11 then gp1() end
if AsD==12 then az() end
XGCK=-1 end

function ZZZZqq()
qmnb = {
{["memory"] = 4},
{["name"] = "喷漆罐道具"},
{["value"]=12240,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=QWER,["offset"]=-0x400,["type"]=4}
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults() end
function gp1()
WJ = gg.prompt({"输入道具代码，12239恢复"}
,{[1]=15056},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "喷漆罐道具"},
{["value"]=12240,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=WJ,["offset"]=-0x400,["type"]=4}
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults() end



function andlua34()
gg.toast("请在5秒内复制房主的人迷你号")
  gg.sleep(5000)
 t = gg.prompt({"『输入房主迷你号』"}
,{[1]=0},{[1]="number"})[1]
  gg.toast("请在10秒内复制要模仿的人的迷你号")
  gg.sleep(10000)
s = gg.prompt({"『输入要模仿的人迷你号』"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "模仿别人打字"},
{["value"] =t , ["type"] = 4},
{["lv"] = zh, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] = s, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end

function andlua35()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = zh, ["offset"] = -0x388, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -0x1D0, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = zh, ["type"] = 4},
{["lv"] = zh, ["offset"] = -0x388, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -0x1D0, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end
end

function andlua36()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
		 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("天空天眼开启成功,共注入1条数据")
	 gg.clearResults()
	 else
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 end
	  elseif  F== 2 then
	  	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;99999;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
		 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1005", gg.TYPE_DWORD)
	 gg.toast("天空天眼开启成功,共注入1条数据")
	 gg.clearResults()
	 else
	 gg.toast("天空天眼开启失败")
	 end
	 end
	 end


function andlua37()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑强化"},
{["value"] =12005 , ["type"] = 4},
{["lv"] = 12005, ["offset"] = -4, ["type"] = 4},
{["lv"] = 12005, ["offset"] = -12, ["type"] = 4},
{["lv"] = 101133, ["offset"] = 0x140, ["type"] = 4},
{["lv"] = 5.0, ["offset"] = 0x4C, ["type"] = 16},
{["lv"] = 1, ["offset"] = 0x138, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 0x4C,["type"] = 16},
{["value"] =0, ["offset"] = 0x138,["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑强化"},
{["value"] =12005 , ["type"] = 4},
{["lv"] = 12005, ["offset"] = -4, ["type"] = 4},
{["lv"] = 12005, ["offset"] = -12, ["type"] = 4},
{["lv"] = 101133, ["offset"] = 0x140, ["type"] = 4},
{["lv"] = 0.0, ["offset"] = 0x4C, ["type"] = 16},
{["lv"] = 0, ["offset"] = 0x138, ["type"] = 4},
}
qmxg = {
{["value"] =5.0, ["offset"] = 0x4C,["type"] = 16},
{["value"] =1, ["offset"] = 0x138,["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end
end



function andlua38()
LQ = gg.prompt({"输入速度，1恢复"}
,{[1]=5},{[1]="number"})
if not LQ then return end
qmnb={
{["memory"]=4},
{["name"]="人物加速"},
{["value"]=515396075740,["type"]=32},
{["lv"]=120,["offset"]= 8,["type"]=4},
{["lv"]=515396075640,["offset"]= 4,["type"]=32},
{["lv"]=944892805180,["offset"]= -4,["type"]=32},
{["lv"]=257698037940,["offset"]= -8,["type"]=32},
{["lv"]=773094114279,["offset"]= -12,["type"]=32},
}
qmxg={
{["value"]=LQ[1],["offset"]= 28,["type"]=4}
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end

function andlua39()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x80, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 3417, ["offset"] = 0x120, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
s = gg.prompt({"『输入要踢的人迷你号』"}
,{[1]=s},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢人"},
{["value"] =zh , ["type"] = 32},
{["lv"] = t, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =s, ["offset"] = 0,["type"] = 32},
}
xqmnb(qmnb)

  gg.toast("请在5秒内召唤第一个坐骑那个人就无了")
    gg.sleep(5000)
qmnb = {
{["memory"] = 4},
{["name"] = "恢复"},
{["value"] =s , ["type"] = 32},
{["lv"] = t, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =zh, ["offset"] = 0,["type"] = 32},
}
xqmnb(qmnb)
end

function andlua40()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x80, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 3417, ["offset"] = 0x120, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主"},
{["value"] =t , ["type"] = 32},
{["lv"] = zh, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] =t, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)

  gg.toast("请在5秒内召唤第一个坐骑那个人就无了")
    gg.sleep(5000)
qmnb = {
{["memory"] = 4},
{["name"] = "恢复"},
{["value"] =t , ["type"] = 32},
{["lv"] = t, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] =zh, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end




function andlua41()
mnmz = ":W"
mnmccq = gg.prompt({"自定义改文字"}
,{[1]=""},{[1]="text"})[1]
mnmcc = ":"..mnmccq
mnmc = ":ggggggggggg"

qmnb = {
{["memory"] = 4},
{["name"] = "开关危险品改文字"},
{["value"] = -1733433962, ["type"] = 4},
{["lv"] = 10723814, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = mnmc, ["offset"] = 20, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 21, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 22, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 23, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 24, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 25, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 26, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 27, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 28, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 29, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 30, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 31, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 32, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 33, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 34, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 35, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 36, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 37, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 38, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 39, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 40, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 41, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 42, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 43, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 44, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 45, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 46, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 47, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 48, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 49, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 50, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 51, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 52, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 53, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 54, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 55, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 56, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 57, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 58, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 59, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 60, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 61, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 62, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 63, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 64, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 65, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 97, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 98, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 99, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 100, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 101, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 102, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 103, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 104, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 105, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 106, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 107, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 108, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 109, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 110, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 111, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 112, ["type"] = 1},
{["value"] = mnmc, ["offset"] = 113, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 114, ["type"] = 1},
{["value"] = mnmc, ["offset"] = 115, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 116, ["type"] = 1},
{["value"] = mnmc, ["offset"] = 117, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 118, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 119, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 120, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 121, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 122, ["type"] = 1},
{["value"] = mnmc, ["offset"] = 123, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 124, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 125, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 126, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 127, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 128, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 129, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 130, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 131, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 132, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 133, ["type"] = 1},
}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("危险品改文字开启成功\n共耗时:"..os.clock()-time.."秒")
if gg.getResultCount() == 0 then
gg.toast("开关危险品_改文字开启失败")
else
end
end

function andlua41()
qmnb = {
{["memory"] = 4},
{["name"] = "全员摔死"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -368, ["type"] = 16},}
xqmnb(qmnb)
gg.clearResults()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0},{120, -4},{60, -16},{180, -12},{120, 4},}
local tb2 = {{  12 }, }
SearchWrite(tb1, tb2, dataType)
gg.getResults(100)
gg.editAll("10000", gg.TYPE_DWORD)	
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua43()
as = gg.prompt({"输入高度"}
,{[1]="100"},{[1]="number"})
if not as then return end
nba = as[1].."00"
qmnb = {
{["memory"] = 4},
{["name"] = "修改高度"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = nba, ["offset"] = 12, ["type"] = 4},}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end

function andlua44()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=945804388,["offset"]=0,["type"]=4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限物品"},
{["value"] =945804388, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=94580388,["offset"]=0,["type"]=4,["freeze"] = false},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end
end

function andlua45()
qmnb = {
{["memory"] = 4},
{["name"] = "40人房间"},
{["value"] = 1111490560, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1108082688, ["offset"] = 4, ["type"] = 4},
{["lv"] = 393222, ["offset"] = 8, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 460, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 460, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end

function andlua46()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] =zh , ["type"] = 4},
{["lv"] = zh, ["offset"] = 20, ["type"] = 4},
{["lv"] = 5, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =4, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] =zh , ["type"] = 4},
{["lv"] = zh, ["offset"] = 20, ["type"] = 4},
{["lv"] = 4, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =5, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end
end

function andlua47()
o2= gg.choice({
"𒅒🧊化石龙🧊𒅒",
"𒅒🧊机灵飞鼠🧊𒅒",
"𒅒🧊瑞祥麒麟🧊𒅒",
"𒅒🧊陆行鸟🧊𒅒",
"𒅒🧊️大白象🧊𒅒",
"𒅒🧊️超能海豹🧊𒅒",
"𒅒🧊舞狮猫猫🧊𒅒",
"𒅒🧊星河天马🧊𒅒",
"𒅒🧊桃香扇缘🧊𒅒",
"𒅒🧊深渊咆哮🧊𒅒",
"𒅒🧊皎月仙宫🧊𒅒",
"𒅒🧊冰雪传说🧊𒅒",   
"𒅒🧊缤纷幻想🧊𒅒",
"𒅒🧊福运哞哞🧊𒅒",
"𒅒🧊浮游山海🧊𒅒",
"𒅒🧊镜花水月🧊𒅒",
"𒅒🧊️鹿王本身🧊𒅒", 
"𒅒🧊️精灵南瓜车🧊𒅒", 
"𒅒🧊️竹 蜻 蜓🧊𒅒",   
"𒅒🧊️曦光绘梦🧊𒅒",  
"𒅒🧊️裂空机甲🧊𒅒",
"𒅒🧊️星河机甲🧊𒅒",
"𒅒🧊️环海洛洛🧊𒅒",
"𒅒🧊️尼龙洛洛🧊𒅒",
"𒅒🧊️虚空龙祖🧊𒅒",
"𒅒🧊️繁花夜明🧊𒅒",
"𒅒🧊️星月魔毯🧊𒅒",
"𒅒🧊️千机隼🧊𒅒",
"𒅒🧊️无限电音🧊𒅒",
"𒅒🧊️云梦花舞🧊𒅒",
"𒅒🧊️醉花阴🧊𒅒",
"𒅒🧊️帝皇战龙🧊𒅒",
"𒅒🧊️虎虎生威🧊𒅒",
"𒅒🧊️旺财🧊𒅒",
"𒅒🧊️帝皇侠🧊𒅒",
"𒅒🧊自定义召唤🧊𒅒",    
"𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒跪得太久，都不知道自己站起来了…𒅒"))
if o2==1 then o=3432 o4() end
if o2==2 then o=3435 o4() end
if o2==3 then o=3438 o4() end
if o2==4 then o=3441 o4() end
if o2==5 then o=3444 o4() end
if o2==6 then o=3447 o4() end
if o2==7 then o=3456 o4() end
if o2==8 then o=3459 o4() end
if o2==9 then o=3462 o4() end
if o2==10 then o=3471 o4() end
if o2==11 then o=3480 o4() end
if o2==12 then o=3485 o4() end
if o2==13 then o=3487 o4() end
if o2==14 then o=3489 o4() end
if o2==15 then o=3492 o4() end
if o2==16 then o=3497 o4() end
if o2==17 then o=4503 o4() end
if o2==18 then o=4507 o4() end
if o2==19 then o=4510 o4() end
if o2==20 then o=4515 o4() end
if o2==21 then o=4518 o4() end
if o2==22 then o=4521 o4() end
if o2==23 then o=4526 o4() end
if o2==24 then o=4528 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
if o2==27 then o=4541 o4() end
if o2==28 then o=4545 o4() end
if o2==29 then o=4548 o4() end
if o2==30 then o=4551 o4() end
if o2==31 then o=4554 o4() end
if o2==32 then o=4562 o4() end
if o2==33 then o=4566 o4() end
if o2==34 then o=4556 o4() end
if o2==35 then o=4570 o4() end
if o2==36 then zdy() end
if o2==37 then az() end
XGCK=-1 end

function zdy()
aba6 = gg.prompt({"请输入坐骑代码"}
,{[1]=4526},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x80, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = aba6, ["offset"] = 0x120, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end

function o4()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x80, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = o, ["offset"] = 0x120, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end



function andlua48()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 mm1 = gg.prompt({"『输入火箭筒发射数量』"}
,{[1]=1},{[1]="number"})[1]

	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;1;1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(mm1, gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
mm2 = mm1
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 
	  elseif  F== 2 then	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;"..mm2..";1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber(mm2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 end	 
end

function andlua49()
   F = gg.alert("请选择｛自己 别人｝","自己","别人️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
mn2=gg.prompt({"『自定义大小』"},{'3'},{"number"})
if not mn2 then return end
qmnb = {
{["memory"] = 4},
{["name"] = "自定义大小"},
{["value"] =zh, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = mn2[1], ["offset"] = 248,["type"] = 16},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
 elseif  F== 2 then
mn2=gg.prompt({"『玩家迷你号』"},{''},{"number"})
if not mn2 then return end
mn1=gg.prompt({"『自定义大小』"},{'3'},{"number"})
if not mn1 then return end
qmnb = {
{["memory"] = 4},
{["name"] = "自定义大小"},
{["value"] =mn2[1], ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = mn1[1], ["offset"] = 248,["type"] = 16},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end
end


function andlua50()
gg.toast("请选择开关")
F = gg.alert("🍀请选择｛开 关｝🍀","️🍀开️🍀","️🍀关️🍀")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("☢你未选择｛开 关｝☢")
  else 
  end
if  F== 1 then

gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
elseif F == 2 then gg.toast("正在开启，请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = false},

}
xqmnb(qmnb)
gg.clearResults() end end


function andlua51()
A1 = gg.prompt({"『请输入你要开启的房间人数』7-10人房 8-20人房 9-30人房 10-40人房 [开启成功后直接开6人房间]"}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "房间人数"},
{["value"] = 13963100160, ["type"] = 32},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1076101120, ["offset"] = -48, ["type"] = 4},

{["lv"] = 3, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1077805056, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = A1, ["offset"] = -68, ["type"] = 64},

}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua52()
gg.toast("请选择复刻物品开关")
F = gg.alert("请选择复刻第一格物品｛开 关｝","🍀开🍀","🍀关🍀")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("功 能 指 南\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)   
qmnb = {
{["memory"] = 4},
{["name"] = "第一格物品复刻开启"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,564, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
az()
end
end
end
end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "物品复刻恢复"},
{["value"] = 945804388, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945804388, ["offset"] = 0, ["type"] = 4, ["freeze"] = false}
}
xqmnb(qmnb)
gg.clearResults()
end
end

function andlua53()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1120403456, ["offset"] = -24, ["type"] = 32},
    }
qmxg = {
{["value"] = 1000000, ["offset"] = -80, ["type"] = 16, ["freeze"] = true},
      {["value"] = 1000000, ["offset"] = -256, ["type"] = 16, ["freeze"] = true},
{["value"] = 0.00006336603, ["offset"] = 0x14, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua54()
c = gg.prompt({"请进入要设置的食物代码 。这个食物一定要没开启秒吃  香溢水果拼盘-12557  水果拼盘-12501  牛排-12517  饺子-12567  年糕-12568  小麦面包-12502  方西瓜-12508   烤鸡全家桶-12543  香溢西瓜汁-12556   香溢野萝卜-12555  香溢烤鸡-12558  香溢牛肉堡-12559   牛肉堡-12544   香溢麦包-12550  长条麦包-12540  疾跑烤鸡-12499   泡泡糖12576   熟猪肉-12523  烤鱼-12521  烤鸡腿-12519  美味蛋糕-830  香溢南瓜派-12552 香溢饼干-12553  浓缩奶糖-12549  萝卜-236  野果12500  瓶装糖浆-11326    牛奶-12509   瓶蜂蜜-12511"}
,{[1]=12557},{[1]="number"})[1]
A = gg.prompt({"请进入吃完食物要回的体力，-号为扣除体力"}
,{[1]=100},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "设置食物体力"},
{["value"] = c, ["type"] = 4},
{["lv"] = 30, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A, ["offset"] = 12, ["type"] = 4},
}
xqmnb(qmnb)
end



function andlua55()
gg.toast("请选择观战模式开关")
F=gg.alert("请选择观战模式｛开 关｝", "开", "关")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777216,["offset"]=-64,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4},
{["lv"]=65536,["offset"]=-88,["type"]=4}
}
qmxg={
{["value"]=16777472,["offset"]=-64,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777472,["offset"]=-64,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4},
{["lv"]=65536,["offset"]=-88,["type"]=4}
}
qmxg={
{["value"]=16777216,["offset"]=-64,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end


function andlua56()
SN = gg.choice({
	 "牛蛋改黑龙火球",
	 "猪蛋改远古黑龙",
	 "鸡蛋改中心长方形",
	 "基岩改tnt",
	 "铁门改火",
}, nil, "稳定性大大提升")
if SN==1 then
	 HS85()
end
if SN==2 then
	 HS86()
end
if SN==3 then
	 HS87()
end
if SN==4 then
	 HS88()
end
if SN==5 then
	 HS89()
end
FX=0
end

function HS85()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS86()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 13502}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("13400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15525}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 834}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS89()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 500}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end


function andlua57()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	 
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] =t , ["type"] = 4},
{["lv"] = t, ["offset"] = 20, ["type"] = 4},
{["lv"] = 5, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =4, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sl=gg.getResultCount()
if sl<1 then return end	 
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
qmnb = {
{["memory"] = 4},
{["name"] = "玩法改创造"},
{["value"] =t , ["type"] = 4},
{["lv"] = t, ["offset"] = 20, ["type"] = 4},
{["lv"] = 4, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =5, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end
end


function andlua58()
AAQW = gg.choice({
    '  𒅒🍀️盛典白象🍀𒅒',--1
    '  𒅒🍀️超能海豹🍀𒅒',--2
    '  𒅒🍀舞狮猫猫🍀𒅒',--3
    '  𒅒🍀星河天马🍀𒅒',--4
    '  𒅒🍀桃花扇缘🍀𒅒',--5
    '  𒅒🍀深渊咆哮🍀𒅒',--6
    '  𒅒🍀️皎月仙宫🍀𒅒',--7
    '  𒅒🍀冰雪传说🍀𒅒',--8
    '  𒅒🍀缤纷幻想🍀𒅒',--9
    '  𒅒🍀福运哞哞🍀𒅒',--10
    '  𒅒🍀浮游山海🍀𒅒',--11
    '  𒅒🍀镜花水月🍀𒅒',--12
    '  𒅒🍀️鹿王本生🍀𒅒',--13
    '  𒅒🍀精灵南瓜车🍀𒅒',--14
    '  𒅒🍀源码螺旋🍀𒅒',--15
    '  𒅒🍀️曦光绘梦🍀𒅒',--16
    '  𒅒🍀裂空战甲🍀𒅒',--17
    '  𒅒🍀星河战甲🍀𒅒',--18
    '  𒅒🍀环海洛洛🍀𒅒',--19
    '  𒅒🍀尼龙洛洛🍀𒅒',--20
    '  𒅒🍀虚空龙祖️🍀𒅒',--21
    '  𒅒🍀繁花夜明️🍀𒅒',--22
    '  𒅒🍀️星月魔毯🍀𒅒',--23
    '  𒅒🍀️千机隼🍀𒅒',--24
    '  𒅒🍀️无限电音🍀𒅒',--25
    '  𒅒🍀️云梦花舞🍀𒅒',--26
    '  𒅒🍀️醉花阴🍀𒅒',--27
    '  𒅒🍀️帝皇战龙🍀𒅒',--28
    '  𒅒🍀️虎虎生威🍀𒅒',--29
    '  𒅒🍀️旺财🍀𒅒',--30
    '  𒅒🍀️帝皇侠🍀𒅒',--31
    '  𒅒🍀️超阴帝皇驹🍀𒅒',--32
    '  𒅒🍀️米兰达🍀𒅒',--32
    '  𒅒🍀️自定义坐骑🍀𒅒',--28
    '  𒅒🎡返 回 主 页🎡𒅒',
    },2018,os.date('🍀请在刷怪方块中选择生物界面开启功能🍀'))
if AAQW==1 then SAD1=3444 ZXc1() end
if AAQW==2 then SAD1=3447 ZXc1() end
if AAQW==3 then SAD1=3456 ZXc1() end
if AAQW==4 then SAD1=3459 ZXc1() end
if AAQW==5 then SAD1=3462 ZXc1() end
if AAQW==6 then SAD1=3471 ZXc1() end
if AAQW==7 then SAD1=3480 ZXc1() end
if AAQW==8 then SAD1=3485 ZXc1() end
if AAQW==9 then SAD1=3486 ZXc1() end
if AAQW==10 then SAD1=3488 ZXc1() end
if AAQW==11 then SAD1=3492 ZXc1() end
if AAQW==12 then SAD1=3497 ZXc1() end
if AAQW==13 then SAD1=4503 ZXc1() end
if AAQW==14 then SAD1=4507 ZXc1() end
if AAQW==15 then SAD1=4510 ZXc1() end
if AAQW==16 then SAD1=4515 ZXc1() end
if AAQW==17 then SAD1=4518 ZXc1() end
if AAQW==18 then SAD1=4521 ZXc1() end
if AAQW==19 then SAD1=4526 ZXc1() end
if AAQW==20 then SAD1=4528 ZXc1() end
if AAQW==21 then SAD1=4533 ZXc1() end
if AAQW==22 then SAD1=4537 ZXc1() end
if AAQW==23 then SAD1=4541 ZXc1() end
if AAQW==24 then SAD1=4545 ZXc1() end
if AAQW==25 then SAD1=4548 ZXc1() end
if AAQW==26 then SAD1=4551 ZXc1() end
if AAQW==27 then SAD1=4554 ZXc1() end
if AAQW==28 then SAD1=4562 ZXc1() end
if AAQW==29 then SAD1=4566 ZXc1() end
if AAQW==30 then SAD1=4556 ZXc1() end
if AAQW==31 then SAD1=4570 ZXc1() end
if AAQW==32 then SAD1=4560 ZXc1() end
if AAQW==33 then SAD1=4568 ZXc1() end
if AAQW==34 then e333() end
if AAQW==35 then az() end
XGCK=-1 end

function ZXc1()  
qmnb = {
{["memory"] = 4},
{["name"] = "刷怪方块"},
{["value"] = 3400, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -48, ["type"] = 4},}
qmxg = {
{["value"] = SAD1, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end
function e333()
r = gg.prompt({"『请输入坐骑代码』 3456-舞狮猫猫 3471-深渊咆哮 3480-皎月仙宫 3486-缤纷幻想 3492-浮游山海 3485-冰雪传说 3514-远古巨人 3459-星河天马 3462-桃香扇缘 4503-鹿王本生 4200-哮天犬 3504-混乱黑龙 3497－镜花水月 4507－精灵南瓜车 4510－竹蜻蜓 4518－烈空战甲 4521－星河战甲 4526－环海洛洛 4533-虚空龙祖 4528-尼东洛洛                                                                      3434-敏捷小飞鼠3435-机智小飞鼠3436-麒麟3437-普通麒麟3438-祥瑞麒麟3439-小陆行鸟3440-迅捷陆行鸟3441-跃动陆行鸟3442-小白象3443-欢乐白象3444-盛典白象3445-海豹水手3446-海豹船长3447-超能海豹3448-擎天柱(游戏版本过低)3449-擎天柱3450-威震天(游戏版本过低)3451-威震天3452-大黄蜂(游戏版本过低)3453-大黄蜂3454-猫宝宝3455-福袋猫猫3456-舞狮猫猫3457-天马宝宝3458-神圣天马3459-星河天马3460-青竹坐台3461-富贵金轿3462-桃香扇缘3463-红蜘蛛(游戏版本过低)3464-红蜘蛛3465-热破(游戏版本过低)3466-热破3467-惊破天(游戏版本过低)3468-惊破天3469-大地领主3470-炎狱魔龙3471-深渊咆哮3472-钢锁3473-钢锁3474-飞标3475-飞标3476-嚎叫3477-嚎叫3478-月明星稀3479-玉兔桃花3480-皎月仙宫3481-兔子先生拉比3482-兔子先生拉比3483-暖冬祝福3484-圣夜惊喜3485-冰雪传说3486-缤纷幻想3487-缤纷幻想3488-福运哞哞3489-福运哞哞3490-攀崖观日3491-北辰荧火3492-浮游山海3493-牛魔王3494-牛魔王3495-步步生莲3496-飞花踏雪3497-镜花水月"}
,{[1]=3485},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "刷怪方块"},
{["value"] = 3400, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -48, ["type"] = 4},}
qmxg = {
{["value"] = r, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end



function andlua59()
gg.toast("请选择开关")
F=gg.alert("请选择｛开 关｝", "开", "关")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑改编辑器"},
{["value"]=12005,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=12,["type"]=4},

}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
elseif F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "能量剑改编辑器"},
{["value"]=10500,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=12,["type"]=4},

}
qmxg={
{["value"]=12005,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end
end



function andlua60()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用编辑器"},
{["value"] = 12862, ["type"] = 4},
{["lv"] = 5, ["offset"] = 4, ["type"] = 4},

}
qmxg = {
{["value"] = 12350, ["offset"] = 0x6C, ["type"] = 4,["freeze"] = true},}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua61()
gg.setRanges(4)
local dataType = 4
local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
local tb2 = {{  -0x74 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
nnb=sl[1].value
gg.alert("代码为"..nnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua62()
c = gg.prompt({"请进入要秒吃的食物代码   香溢水果拼盘-12557  水果拼盘-12501  牛排-12517  饺子-12567  年糕-12568  小麦面包-12502  方西瓜-12508   烤鸡全家桶-12543  香溢西瓜汁-12556   香溢野萝卜-12555  香溢烤鸡-12558  香溢牛肉堡-12559   牛肉堡-12544   香溢麦包-12550  长条麦包-12540  疾跑烤鸡-12499   泡泡糖12576   熟猪肉-12523  烤鱼-12521  烤鸡腿-12519  美味蛋糕-830  香溢南瓜派-12552 香溢饼干-12553  浓缩奶糖-12549  萝卜-236  野果12500  瓶装糖浆-11326    牛奶-12509   瓶蜂蜜-12511"}
,{[1]=12557},{[1]="number"})
if not c then return end
qmnb = {
{["memory"] = 4},
{["name"] = "秒吃食物"},
{["value"] = c[1], ["type"] = 4},
{["lv"] = -9999, ["offset"] = 4, ["type"] = 4},
{["lv"] = c[1], ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 30, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end


function andlua63()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "攻击穿墙"},
{["value"] =120, ["type"] = 32},
{["lv"] =120 , ["offset"] = -144, ["type"] = 32},
{["lv"] =100.0, ["offset"] = 40, ["type"] = 16},
}
qmxg = {
{["value"]=50.0,["offset"]=40,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "攻击穿墙"},
{["value"] =120, ["type"] = 32},
{["lv"] =120 , ["offset"] = -144, ["type"] = 32},
{["lv"] =50.0, ["offset"] = 40, ["type"] = 16},
}
qmxg = {
{["value"]=100.0,["offset"]=40,["type"]=16},
}
xqmnb(qmnb)
end
end



function andlua64()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","关")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "第一步"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},

}
qmxg = {
{["value"] = 1, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)


	 gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0},{120, -4},{60, -16},{180, -12},{120, 4},}
local tb2 = {{  12 }, }
SearchWrite(tb1, tb2, dataType)
gg.getResults(100)
gg.editAll("10000", gg.TYPE_DWORD)
gg.sleep(1000)
gg.editAll("20000", gg.TYPE_DWORD)
gg.sleep(1000)
gg.editAll("30000", gg.TYPE_DWORD)
gg.sleep(1000)
gg.editAll("40000", gg.TYPE_DWORD)
gg.sleep(2000)
gg.searchNumber("40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
sl=gg.getResultCount()
if sl < 1 then gg.toast("锁高度隐身开启失败")
else 
sl=gg.getResultCount()
jg=gg.getResults(100)
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1800}})
end
gg.toast("锁高度隐身开启成功，共注入"..sl.."条数据")
end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "关闭"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},

}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4, ["freeze"] = false},
{["value"] = 1, ["offset"] = 64, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end end  

function Exit()
print("你与神明画押，赌你一瞬间心动.")
gg.toast("退出脚本成功\n耗时:0.01秒\n欢迎再次使用")
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end


