#name 使用说明
str="
  按PageUP PageDown可以翻页
  按回车键可以运行这段程序
"

if defined? msgbox
  msgbox str
else
  print str
end

