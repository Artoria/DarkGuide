#name API弹出对话框

=begin
第一次弹出对话框
=end
W = Win32API.new('user32', 'MessageBoxW', 'ippi', 'i')
W.(0, "弹出对话框", "这里是标题", 16)
# 16是对话框的图标
# 应该是乱码的，因为没有转换内码



=begin
第二次弹出对话框
=end
T = Win32API.new('Kernel32', 'MultiByteToWideChar', 'iipipi', 'i')

def L(str)#转换字符串到Unicode
 buf = ([0] * T.call(65001, 0, str, -1, nil, 0)).pack("C*")
 T.call(65001, 0, str, -1, buf, buf.length)
 buf
end

W.(0, (L"弹出对话框"), (L"这里是标题"), 16)
