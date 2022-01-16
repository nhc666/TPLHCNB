function split(szFullString,szSeparator) local nFindStartIndex=1 local nSplitIndex=1 local nSplitArray={} while(true)do local nFindLastIndex=string.find(szFullString,szSeparator,nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex]=string.sub(szFullString,nFindStartIndex,string.len(szFullString)) break end nSplitArray[nSplitIndex]=string.sub(szFullString,nFindStartIndex,nFindLastIndex-1) nFindStartIndex=nFindLastIndex+string.len(szSeparator) nSplitIndex=nSplitIndex+1 end return nSplitArray end
function xgxc(szpy,qmxg) for x=1,#(qmxg) do xgpy=szpy + qmxg[x]["offset"] xglx=qmxg[x]["type"] xgsz=qmxg[x]["value"] xgdj=qmxg[x]["freeze"] if xgdj==nil or xgdj=="" then gg.setValues({[1]={address=xgpy,flags=xglx,value=xgsz}}) else gg.addListItems({[1]={address=xgpy,flags=xglx,freeze=xgdj,value=xgsz}}) end xgsl=xgsl+1 xgjg=true end end
function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount()==0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount()==0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl=gg.getResults(999999) sz=gg.getResultCount() xgsl=0 if sz>999999 then sz=999999 end for i=1,sz do pdsz=true for v=4,#(qmnb) do if pdsz==true then pysz={} pysz[1]={} pysz[1].address=sl[i].address + qmnb[v]["offset"] pysz[1].flags=qmnb[v]["type"] szpy=gg.getValues(pysz) pdpd=qmnb[v]["lv"]..";"..szpy[1].value szpd=split(pdpd, ";") tzszpd=szpd[1] pyszpd=szpd[2] if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address xgxc(szpy,qmxg) end end if xgjg==true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end



F = gg.alert("任务内部功能","成就永久","️领取界面️️","修改物品")
 if  F~=1 and F~=2 and F~=3 then
 gg.toast("你未选择功能默认取消")
    gg.toast("你未选择功能")
  else 
  end
if  F== 1 then
local qmnb = {
{["memory"] = 4},
{["name"] = "第一个成就无限领"},
{["value"] = 1221, ["type"] = 4},
{["lv"] = 2, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4}}
qmxg = {
{["value"] = 1, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
elseif F== 2 then
local qmnb = {
{["memory"] = 4},
{["name"] = "联机取物"},
{["value"] = 1124859904, ["type"] = 4},
{["lv"] = -1047527424, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x38, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x20, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x14, ["type"] = 4},
{["lv"] = 1113063424, ["offset"] = -0x18, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 0xA0, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 0x98, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x4C, ["type"] = 4},
}
qmxg = {{["value"] = 16777472, ["offset"] = -0x4C, ["type"] = 4, ["freeze"] = true},}
xqmnb(qmnb)
gg.clearResults()
elseif F== 3 then
local a=gg.prompt({'请输入物品代码:','请输入物品数量'},{'15056','200'},{'number','number'})
if a~=nil then
local qmnb = {
{["memory"] = 4},
{["name"] = "物品修改"},
{["value"] = 11627, ["type"] = 4},
{["lv"] = 1221, ["offset"] = -20, ["type"] = 4},
{["lv"] = 1.3434883840091061E-5, ["offset"] = 112, ["type"] = 16},
{["lv"] = 180, ["offset"] = 360, ["type"] = 4},
}
qmxg = {
{["value"] = 15054, ["offset"] = 620, ["type"] = 4},
{["value"] = 9999, ["offset"] = 628, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "联机取物"},
{["value"] = 11012, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1, ["offset"] = 32, ["type"] = 4},
{["lv"] = 11013, ["offset"] = -928, ["type"] = 4},

}
qmxg = {
{["value"] = 0, ["offset"] =4, ["type"] = 4},
{["value"] = 0, ["offset"] =8, ["type"] = 4},
{["value"] = a[1], ["offset"] =16, ["type"] = 4},
{["value"] = a[2], ["offset"] =24, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x39C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x398, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x390, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x388, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x73C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x738, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x730, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x728, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xADC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xAD8, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0xAD0, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0xAC8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0xE7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0xE78, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0xE70, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0xE68, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x121C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1218, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x1210, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x1208, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x15BC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x15B8, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x15B0, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x15A8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x195C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1958, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x1950, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x1948, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x1CFC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x1CF8, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x1CF0, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x1CE8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x209C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2098, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x2090, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x2088, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x243C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2438, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x2430, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x2428, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x27DC, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x27D8, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x27D0, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x27C8, ["type"] = 4},

{["value"] = 0, ["offset"] =-0x2B7C, ["type"] = 4},
{["value"] = 0, ["offset"] =-0x2B78, ["type"] = 4},
{["value"] = a[1], ["offset"] =-0x2B70, ["type"] = 4},
{["value"] = a[2], ["offset"] =-0x2B68, ["type"] = 4},

 }
xqmnb(qmnb)
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
{["value"] = 1, ["offset"] = 12, ["type"] = 4},
{["value"] = 15004, ["offset"] = 16, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 1, ["offset"] = 24, ["type"] = 4},
{["value"] = 666666, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
end
