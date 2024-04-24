#SingleInstance Force

;主函数--------------------------------------------------------------------------------------------------------------------------------------------------------
If !DirExist("Temp")
{
  DirCreate "Temp"
}

FileCopy "1.ini", "Temp", True

myGui := Constructor()

IMode := IniRead("1.ini", "Mode", "Mode")

ICX2L1 := IniRead("1.ini", "Click", "CX2L1")
ICX2R1 := IniRead("1.ini", "Click", "CX2R1")
ICX2M1 := IniRead("1.ini", "Click", "CX2M1")
ICX2X1 := IniRead("1.ini", "Click", "CX2X1")
ICX2_1 := IniRead("1.ini", "Click", "CX2_1")
ICX2L2 := IniRead("1.ini", "Click", "CX2L2")
ICX2R2 := IniRead("1.ini", "Click", "CX2R2")
ICX2M2 := IniRead("1.ini", "Click", "CX2M2")
ICX2X2 := IniRead("1.ini", "Click", "CX2X2")
ICX2_2 := IniRead("1.ini", "Click", "CX2_2")
ICX2L3 := IniRead("1.ini", "Click", "CX2L3")
ICX2R3 := IniRead("1.ini", "Click", "CX2R3")
ICX2M3 := IniRead("1.ini", "Click", "CX2M3")
ICX2X3 := IniRead("1.ini", "Click", "CX2X3")
ICX2_3 := IniRead("1.ini", "Click", "CX2_3")
ICX1L1 := IniRead("1.ini", "Click", "CX1L1")
ICX1R1 := IniRead("1.ini", "Click", "CX1R1")
ICX1M1 := IniRead("1.ini", "Click", "CX1M1")
ICX1X1 := IniRead("1.ini", "Click", "CX1X1")
ICX1_1 := IniRead("1.ini", "Click", "CX1_1")
ICX1L2 := IniRead("1.ini", "Click", "CX1L2")
ICX1R2 := IniRead("1.ini", "Click", "CX1R2")
ICX1M2 := IniRead("1.ini", "Click", "CX1M2")
ICX1X2 := IniRead("1.ini", "Click", "CX1X2")
ICX1_2 := IniRead("1.ini", "Click", "CX1_2")
ICX1L3 := IniRead("1.ini", "Click", "CX1L3")
ICX1R3 := IniRead("1.ini", "Click", "CX1R3")
ICX1M3 := IniRead("1.ini", "Click", "CX1M3")
ICX1X3 := IniRead("1.ini", "Click", "CX1X3")
ICX1_3 := IniRead("1.ini", "Click", "CX1_3")

IRX2U1 := IniRead("1.ini", "Roll", "RX2U1")
IRX2D1 := IniRead("1.ini", "Roll", "RX2D1")
IRX2U2 := IniRead("1.ini", "Roll", "RX2U2")
IRX2D2 := IniRead("1.ini", "Roll", "RX2D2")
IRX2U3 := IniRead("1.ini", "Roll", "RX2U3")
IRX2D3 := IniRead("1.ini", "Roll", "RX2D3")
IRX1U1 := IniRead("1.ini", "Roll", "RX1U1")
IRX1D1 := IniRead("1.ini", "Roll", "RX1D1")
IRX1U2 := IniRead("1.ini", "Roll", "RX1U2")
IRX1D2 := IniRead("1.ini", "Roll", "RX1D2")
IRX1U3 := IniRead("1.ini", "Roll", "RX1U3")
IRX1D3 := IniRead("1.ini", "Roll", "RX1D3")

IMX2L1 := IniRead("1.ini", "Move", "MX2L1")
IMX2R1 := IniRead("1.ini", "Move", "MX2R1")
IMX2M1 := IniRead("1.ini", "Move", "MX2M1")
IMX2L2 := IniRead("1.ini", "Move", "MX2L2")
IMX2R2 := IniRead("1.ini", "Move", "MX2R2")
IMX2M2 := IniRead("1.ini", "Move", "MX2M2")
IMX2L3 := IniRead("1.ini", "Move", "MX2L3")
IMX2R3 := IniRead("1.ini", "Move", "MX2R3")
IMX2M3 := IniRead("1.ini", "Move", "MX2M3")
IMX1L1 := IniRead("1.ini", "Move", "MX1L1")
IMX1R1 := IniRead("1.ini", "Move", "MX1R1")
IMX1M1 := IniRead("1.ini", "Move", "MX1M1")
IMX1L2 := IniRead("1.ini", "Move", "MX1L2")
IMX1R2 := IniRead("1.ini", "Move", "MX1R2")
IMX1M2 := IniRead("1.ini", "Move", "MX1M2")
IMX1L3 := IniRead("1.ini", "Move", "MX1L3")
IMX1R3 := IniRead("1.ini", "Move", "MX1R3")
IMX1M3 := IniRead("1.ini", "Move", "MX1M3")

If (IMode = 1)
{
  Mode1.Value := 1
}
else If (IMode = 2)
{
  Mode2.Value := 1
}
else If (IMode = 3)
{
  Mode3.Value := 1
}

IClickFun(a1, a2)
{
  if (a1 = 1)
  {
    a2.Text := "无"
  }
  else if (a1 = 2)
  {
    a2.Text := "自己映射按键"
  }
  else if (a1 = 3)
  {
    a2.Text := "前进"
  }
  else if (a1 = 4)
  {
    a2.Text := "后退"
  }
  else if (a1 = 5)
  {
    a2.Text := "撤销"
  }
  else if (a1 = 6)
  {
    a2.Text := "重做"
  }
  else if (a1 = 7)
  {
    a2.Text := "全选"
  }
  else if (a1 = 8)
  {
    a2.Text := "复制"
  }
  else if (a1 = 9)
  {
    a2.Text := "粘贴"
  }
  else if (a1 = 10)
  {
    a2.Text := "剪切"
  }
  else if (a1 = 11)
  {
    a2.Text := "切换剪贴板+1"
  }
  else if (a1 = 12)
  {
    a2.Text := "切换剪贴板-1"
  }
  else if (a1 = 13)
  {
    a2.Text := "提示剪贴板内容"
  }
  else if (a1 = 14)
  {
    a2.Text := "无格式粘贴"
  }
  else if (a1 = 15)
  {
    a2.Text := "清除选中文字格式"
  }
  else if (a1 = 16)
  {
    a2.Text := "清除剪贴板中文字格式"
  }
  else if (a1 = 17)
  {
    a2.Text := "关闭窗口"
  }
  else if (a1 = 18)
  {
    a2.Text := "切换模式+1"
  }
  else if (a1 = 19)
  {
    a2.Text := "切换模式-1"
  }
}

IRollFun(b1, b2)
{
  if (b1 = 1)
  {
    b2.Text := "无"
  }
  else if (b1 = 2)
  {
    b2.Text := "自己映射按键"
  }
  else if (b1 = 3)
  {
    b2.Text := "向上滚轮加速"
  }
  else if (b1 = 4)
  {
    b2.Text := "向下滚轮加速"
  }
  else if (b1 = 5)
  {
    b2.Text := "向左滚轮"
  }
  else if (b1 = 6)
  {
    b2.Text := "向右滚轮"
  }
  else if (b1 = 7)
  {
    b2.Text := "放大"
  }
  else if (b1 = 8)
  {
    b2.Text := "缩小"
  }
  else if (b1 = 9)
  {
    b2.Text := "前进"
  }
  else if (b1 = 10)
  {
    b2.Text := "后退"
  }
  else if (b1 = 11)
  {
    b2.Text := "撤销"
  }
  else if (b1 = 12)
  {
    b2.Text := "重做"
  }
  else if (b1 = 13)
  {
    b2.Text := "切换剪贴板+1"
  }
  else if (b1 = 14)
  {
    b2.Text := "切换剪贴板-1"
  }
  else if (b1 = 15)
  {
    b2.Text := "切换模式+1"
  }
  else if (b1 = 16)
  {
    b2.Text := "切换模式-1"
  }
}

IMoveFun(c1, c2)
{
  if (c1 = 1)
  {
    c2.Text := "无"
  }
  else if (c1 = 2)
  {
    c2.Text := "自己映射移动连续触发"
  }
  else if (c1 = 3)
  {
    c2.Text := "自己映射移动单次触发"
  }
  else if (c1 = 4)
  {
    c2.Text := "任意一点拖动窗口"
  }
  else if (c1 = 5)
  {
    c2.Text := "窗口上下左右贴边"
  }
  else if (c1 = 6)
  {
    c2.Text := "任意一点调整窗口尺寸"
  }
  else if (c1 = 7)
  {
    c2.Text := "移动连续触发上下左右"
  }
  else if (c1 = 8)
  {
    c2.Text := "移动连续触发空格、回车、退格、Del"
  }
  else if (c1 = 9)
  {
    c2.Text := "移动连续触发选中上下左右"
  }
  else if (c1 = 10)
  {
    c2.Text := "放大缩小和横向滚轮"
  }
}

IClickFun(ICX2L1, CX2L1)
IClickFun(ICX2R1, CX2R1)
IClickFun(ICX2M1, CX2M1)
IClickFun(ICX2X1, CX2X1)
IClickFun(ICX2_1, CX2_1)
IClickFun(ICX2L2, CX2L2)
IClickFun(ICX2R2, CX2R2)
IClickFun(ICX2M2, CX2M2)
IClickFun(ICX2X2, CX2X2)
IClickFun(ICX2_2, CX2_2)
IClickFun(ICX2L3, CX2L3)
IClickFun(ICX2R3, CX2R3)
IClickFun(ICX2M3, CX2M3)
IClickFun(ICX2X3, CX2X3)
IClickFun(ICX2_3, CX2_3)
IClickFun(ICX1L1, CX1L1)
IClickFun(ICX1R1, CX1R1)
IClickFun(ICX1M1, CX1M1)
IClickFun(ICX1X1, CX1X1)
IClickFun(ICX1_1, CX1_1)
IClickFun(ICX1L2, CX1L2)
IClickFun(ICX1R2, CX1R2)
IClickFun(ICX1M2, CX1M2)
IClickFun(ICX1X2, CX1X2)
IClickFun(ICX1_2, CX1_2)
IClickFun(ICX1L3, CX1L3)
IClickFun(ICX1R3, CX1R3)
IClickFun(ICX1M3, CX1M3)
IClickFun(ICX1X3, CX1X3)
IClickFun(ICX1_3, CX1_3)

IRollFun(IRX2U1, RX2U1)
IRollFun(IRX2D1, RX2D1)
IRollFun(IRX2U2, RX2U2)
IRollFun(IRX2D2, RX2D2)
IRollFun(IRX2U3, RX2U3)
IRollFun(IRX2D3, RX2D3)
IRollFun(IRX1U1, RX1U1)
IRollFun(IRX1D1, RX1D1)
IRollFun(IRX1U2, RX1U2)
IRollFun(IRX1D2, RX1D2)
IRollFun(IRX1U3, RX1U3)
IRollFun(IRX1D3, RX1D3)

IMoveFun(IMX2L1, MX2L1)
IMoveFun(IMX2R1, MX2R1)
IMoveFun(IMX2M1, MX2M1)
IMoveFun(IMX2L2, MX2L2)
IMoveFun(IMX2R2, MX2R2)
IMoveFun(IMX2M2, MX2M2)
IMoveFun(IMX2L3, MX2L3)
IMoveFun(IMX2R3, MX2R3)
IMoveFun(IMX2M3, MX2M3)
IMoveFun(IMX1L1, MX1L1)
IMoveFun(IMX1R1, MX1R1)
IMoveFun(IMX1M1, MX1M1)
IMoveFun(IMX1L2, MX1L2)
IMoveFun(IMX1R2, MX1R2)
IMoveFun(IMX1M2, MX1M2)
IMoveFun(IMX1L3, MX1L3)
IMoveFun(IMX1R3, MX1R3)
IMoveFun(IMX1M3, MX1M3)

myGui.Show("w954 h523")

;创建Gui-------------------------------------------------------------------------------------------------------------------------------------------------------

Constructor()
{
  global
  myGui := Gui()
  Tab := myGui.Add("Tab3", "x0 y0 w1218 h617", ["选择模式", "模式1", "模式2", "模式3"])

  ;选择模式----------------------------------------------------------------------------------------------------------------------------------------------------

  Tab.UseTab(1)
  Mode1 := myGui.Add("Radio", "x40 y72 w120 h23", "模式1")
  Mode2 := myGui.Add("Radio", "x40 y176 w120 h23", "模式2")
  Mode3 := myGui.Add("Radio", "x40 y272 w120 h23", "模式3")

  Button1 := myGui.Add("Button", "x16 y488 w80 h23", "&教程")
  Button2 := myGui.Add("Button", "x608 y488 w80 h23", "&重置")
  Button3 := myGui.Add("Button", "x728 y488 w80 h23", "&确定")
  Button4 := myGui.Add("Button", "x848 y488 w80 h23", "&取消")

  ;模式1---------------------------------------------------------------------------------------------------------------------------------------------------------

  Tab.UseTab(2)
  myGui.Add("Text", "x16 y80 w80 h23 +0x200", "X2+左键")
  myGui.Add("Text", "x160 y40 w120 h23 +0x200", "点击")
  myGui.Add("Text", "x296 y40 w120 h23 +0x200", "按住移动")
  myGui.Add("Text", "x472 y24 w3 h662 +0x10")
  myGui.Add("Text", "x16 y136 w118 h23 +0x200", "X2+右键")
  myGui.Add("Text", "x16 y192 w120 h23 +0x200", "X2+中键")
  myGui.Add("Text", "x16 y248 w120 h23 +0x200", "X2+向上滚轮")
  myGui.Add("Text", "x16 y304 w120 h23 +0x200", "X2+向下滚轮")
  myGui.Add("Text", "x16 y360 w120 h23 +0x200", "X2+X1")
  myGui.Add("Text", "x16 y416 w120 h23 +0x200", "X2")
  myGui.Add("Text", "x480 y80 w80 h23 +0x200", "X1+左键")
  myGui.Add("Text", "x480 y136 w118 h23 +0x200", "X1+右键")
  myGui.Add("Text", "x480 y192 w120 h23 +0x200", "X1+中键")
  myGui.Add("Text", "x480 y248 w120 h23 +0x200", "X1+向上滚轮")
  myGui.Add("Text", "x480 y304 w120 h23 +0x200", "X1+向下滚轮")
  myGui.Add("Text", "x480 y360 w120 h23 +0x200", "X1+X2")
  myGui.Add("Text", "x480 y416 w120 h23 +0x200", "X1")
  myGui.Add("Text", "x616 y40 w120 h23 +0x200", "点击")
  myGui.Add("Text", "x760 y40 w120 h23 +0x200", "按住移动")
  Button5 := myGui.Add("Button", "x16 y488 w80 h23", "&教程")
  Button6 := myGui.Add("Button", "x608 y488 w80 h23", "&重置")
  Button7 := myGui.Add("Button", "x728 y488 w80 h23", "&确定")
  Button8 := myGui.Add("Button", "x848 y488 w80 h23", "&取消")

  CX2L1 := myGui.Add("DropDownList", "x120 y80 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2R1 := myGui.Add("DropDownList", "x120 y136 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2M1 := myGui.Add("DropDownList", "x120 y192 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2X1 := myGui.Add("DropDownList", "x120 y360 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2_1 := myGui.Add("DropDownList", "x120 y416 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])

  RX2U1 := myGui.Add("DropDownList", "x120 y248 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])
  RX2D1 := myGui.Add("DropDownList", "x120 y304 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])

  MX2L1 := myGui.Add("DropDownList", "x264 y80 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX2R1 := myGui.Add("DropDownList", "x264 y136 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX2M1 := myGui.Add("DropDownList", "x264 y192 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])

  CX1L1 := myGui.Add("DropDownList", "x584 y80 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1R1 := myGui.Add("DropDownList", "x584 y136 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1M1 := myGui.Add("DropDownList", "x584 y192 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1X1 := myGui.Add("DropDownList", "x584 y360 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1_1 := myGui.Add("DropDownList", "x584 y416 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])

  RX1U1 := myGui.Add("DropDownList", "x584 y248 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])
  RX1D1 := myGui.Add("DropDownList", "x584 y304 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])

  MX1L1 := myGui.Add("DropDownList", "x728 y80 w205", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX1R1 := myGui.Add("DropDownList", "x728 y136 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX1M1 := myGui.Add("DropDownList", "x728 y192 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])


  myGui.SetFont("cBlue")
  myGui.Add("Text", "x16 y450 w261 h23 +0x200", "X2是鼠标两个侧键中前面的侧键")
  myGui.Add("Text", "x480 y450 w257 h23 +0x200", "X1是鼠标两个侧键中后面的侧键")

  ;模式2---------------------------------------------------------------------------------------------------------------------------------------------------------

  Tab.UseTab(3)
  myGui.SetFont("c000000")
  myGui.Add("Text", "x16 y80 w80 h23 +0x200", "X2+左键")
  myGui.Add("Text", "x160 y40 w120 h23 +0x200", "点击")
  myGui.Add("Text", "x296 y40 w120 h23 +0x200", "按住移动")
  myGui.Add("Text", "x472 y24 w3 h662 +0x10")
  myGui.Add("Text", "x16 y136 w118 h23 +0x200", "X2+右键")
  myGui.Add("Text", "x16 y192 w120 h23 +0x200", "X2+中键")
  myGui.Add("Text", "x16 y248 w120 h23 +0x200", "X2+向上滚轮")
  myGui.Add("Text", "x16 y304 w120 h23 +0x200", "X2+向下滚轮")
  myGui.Add("Text", "x16 y360 w120 h23 +0x200", "X2+X1")
  myGui.Add("Text", "x16 y416 w120 h23 +0x200", "X2")
  myGui.Add("Text", "x480 y80 w80 h23 +0x200", "X1+左键")
  myGui.Add("Text", "x480 y136 w118 h23 +0x200", "X1+右键")
  myGui.Add("Text", "x480 y192 w120 h23 +0x200", "X1+中键")
  myGui.Add("Text", "x480 y248 w120 h23 +0x200", "X1+向上滚轮")
  myGui.Add("Text", "x480 y304 w120 h23 +0x200", "X1+向下滚轮")
  myGui.Add("Text", "x480 y360 w120 h23 +0x200", "X1+X2")
  myGui.Add("Text", "x480 y416 w120 h23 +0x200", "X1")
  myGui.Add("Text", "x616 y40 w120 h23 +0x200", "点击")
  myGui.Add("Text", "x760 y40 w120 h23 +0x200", "按住移动")
  Button9 := myGui.Add("Button", "x16 y488 w80 h23", "&教程")
  Button10 := myGui.Add("Button", "x608 y488 w80 h23", "&重置")
  Button11 := myGui.Add("Button", "x728 y488 w80 h23", "&确定")
  Button12 := myGui.Add("Button", "x848 y488 w80 h23", "&取消")


  CX2L2 := myGui.Add("DropDownList", "x120 y80 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2R2 := myGui.Add("DropDownList", "x120 y136 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2M2 := myGui.Add("DropDownList", "x120 y192 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2X2 := myGui.Add("DropDownList", "x120 y360 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2_2 := myGui.Add("DropDownList", "x120 y416 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])

  RX2U2 := myGui.Add("DropDownList", "x120 y248 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])
  RX2D2 := myGui.Add("DropDownList", "x120 y304 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])

  MX2L2 := myGui.Add("DropDownList", "x264 y80 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX2R2 := myGui.Add("DropDownList", "x264 y136 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX2M2 := myGui.Add("DropDownList", "x264 y192 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])

  CX1L2 := myGui.Add("DropDownList", "x584 y80 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1R2 := myGui.Add("DropDownList", "x584 y136 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1M2 := myGui.Add("DropDownList", "x584 y192 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1X2 := myGui.Add("DropDownList", "x584 y360 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1_2 := myGui.Add("DropDownList", "x584 y416 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])

  RX1U2 := myGui.Add("DropDownList", "x584 y248 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])
  RX1D2 := myGui.Add("DropDownList", "x584 y304 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])

  MX1L2 := myGui.Add("DropDownList", "x728 y80 w205", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX1R2 := myGui.Add("DropDownList", "x728 y136 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX1M2 := myGui.Add("DropDownList", "x728 y192 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])


  myGui.SetFont("cBlue")
  myGui.Add("Text", "x16 y450 w261 h23 +0x200", "X2是鼠标两个侧键中前面的侧键")
  myGui.Add("Text", "x480 y450 w257 h23 +0x200", "X1是鼠标两个侧键中后面的侧键")

  ;模式3---------------------------------------------------------------------------------------------------------------------------------------------------------

  Tab.UseTab(4)
  myGui.SetFont("c000000")
  myGui.Add("Text", "x16 y80 w80 h23 +0x200", "X2+左键")
  myGui.Add("Text", "x160 y40 w120 h23 +0x200", "点击")
  myGui.Add("Text", "x296 y40 w120 h23 +0x200", "按住移动")
  myGui.Add("Text", "x472 y24 w3 h662 +0x10")
  myGui.Add("Text", "x16 y136 w118 h23 +0x200", "X2+右键")
  myGui.Add("Text", "x16 y192 w120 h23 +0x200", "X2+中键")
  myGui.Add("Text", "x16 y248 w120 h23 +0x200", "X2+向上滚轮")
  myGui.Add("Text", "x16 y304 w120 h23 +0x200", "X2+向下滚轮")
  myGui.Add("Text", "x16 y360 w120 h23 +0x200", "X2+X1")
  myGui.Add("Text", "x16 y416 w120 h23 +0x200", "X2")
  myGui.Add("Text", "x480 y80 w80 h23 +0x200", "X1+左键")
  myGui.Add("Text", "x480 y136 w118 h23 +0x200", "X1+右键")
  myGui.Add("Text", "x480 y192 w120 h23 +0x200", "X1+中键")
  myGui.Add("Text", "x480 y248 w120 h23 +0x200", "X1+向上滚轮")
  myGui.Add("Text", "x480 y304 w120 h23 +0x200", "X1+向下滚轮")
  myGui.Add("Text", "x480 y360 w120 h23 +0x200", "X1+X2")
  myGui.Add("Text", "x480 y416 w120 h23 +0x200", "X1")
  myGui.Add("Text", "x616 y40 w120 h23 +0x200", "点击")
  myGui.Add("Text", "x760 y40 w120 h23 +0x200", "按住移动")
  Button13 := myGui.Add("Button", "x16 y488 w80 h23", "&教程")
  Button14 := myGui.Add("Button", "x608 y488 w80 h23", "&重置")
  Button15 := myGui.Add("Button", "x728 y488 w80 h23", "&确定")
  Button16 := myGui.Add("Button", "x848 y488 w80 h23", "&取消")


  CX2L3 := myGui.Add("DropDownList", "x120 y80 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2R3 := myGui.Add("DropDownList", "x120 y136 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2M3 := myGui.Add("DropDownList", "x120 y192 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2X3 := myGui.Add("DropDownList", "x120 y360 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX2_3 := myGui.Add("DropDownList", "x120 y416 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])

  RX2U3 := myGui.Add("DropDownList", "x120 y248 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])
  RX2D3 := myGui.Add("DropDownList", "x120 y304 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])

  MX2L3 := myGui.Add("DropDownList", "x264 y80 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX2R3 := myGui.Add("DropDownList", "x264 y136 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX2M3 := myGui.Add("DropDownList", "x264 y192 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])

  CX1L3 := myGui.Add("DropDownList", "x584 y80 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1R3 := myGui.Add("DropDownList", "x584 y136 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1M3 := myGui.Add("DropDownList", "x584 y192 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1X3 := myGui.Add("DropDownList", "x584 y360 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])
  CX1_3 := myGui.Add("DropDownList", "x584 y416 w120", ["无", "自己映射按键", "前进", "后退", "撤销", "重做", "全选", "复制", "粘贴", "剪切", "切换剪贴板+1", "切换剪贴板-1", "提示剪贴板内容", "无格式粘贴", "清除选中文字格式", "清除剪贴板中文字格式", "关闭窗口", "切换模式+1", "切换模式-1"])

  RX1U3 := myGui.Add("DropDownList", "x584 y248 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])
  RX1D3 := myGui.Add("DropDownList", "x584 y304 w120", ["无", "自己映射按键", "向上滚轮加速", "向下滚轮加速", "向左滚轮", "向右滚轮", "放大", "缩小", "前进", "后退", "撤销", "重做", "切换剪贴板+1", "切换剪贴板-1", "切换模式+1", "切换模式-1"])

  MX1L3 := myGui.Add("DropDownList", "x728 y80 w205", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX1R3 := myGui.Add("DropDownList", "x728 y136 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])
  MX1M3 := myGui.Add("DropDownList", "x728 y192 w204", ["无", "自己映射移动连续触发", "自己映射移动单次触发", "任意一点拖动窗口", "窗口上下左右贴边", "任意一点调整窗口尺寸", "移动连续触发上下左右", "移动连续触发空格、回车、退格、Del", "移动连续触发选中上下左右", "放大缩小和横向滚轮"])


  myGui.SetFont("cBlue")
  myGui.Add("Text", "x16 y450 w261 h23 +0x200", "X2是鼠标两个侧键中前面的侧键")
  myGui.Add("Text", "x480 y450 w257 h23 +0x200", "X1是鼠标两个侧键中后面的侧键")
  myGui.SetFont("c000000")

  ;触发函数------------------------------------------------------------------------------------------------------------------------------------------------------

  Tab.UseTab()

  Mode1.OnEvent("Click", Mode)
  Mode2.OnEvent("Click", Mode)
  Mode3.OnEvent("Click", Mode)

  CX2L1.OnEvent("Change", FCX2L1)
  CX2R1.OnEvent("Change", FCX2R1)
  CX2M1.OnEvent("Change", FCX2M1)
  CX2X1.OnEvent("Change", FCX2X1)
  CX2_1.OnEvent("Change", FCX2_1)
  CX2L2.OnEvent("Change", FCX2L2)
  CX2R2.OnEvent("Change", FCX2R2)
  CX2M2.OnEvent("Change", FCX2M2)
  CX2X2.OnEvent("Change", FCX2X2)
  CX2_2.OnEvent("Change", FCX2_2)
  CX2L3.OnEvent("Change", FCX2L3)
  CX2R3.OnEvent("Change", FCX2R3)
  CX2M3.OnEvent("Change", FCX2M3)
  CX2X3.OnEvent("Change", FCX2X3)
  CX2_3.OnEvent("Change", FCX2_3)
  CX1L1.OnEvent("Change", FCX1L1)
  CX1R1.OnEvent("Change", FCX1R1)
  CX1M1.OnEvent("Change", FCX1M1)
  CX1X1.OnEvent("Change", FCX1X1)
  CX1_1.OnEvent("Change", FCX1_1)
  CX1L2.OnEvent("Change", FCX1L2)
  CX1R2.OnEvent("Change", FCX1R2)
  CX1M2.OnEvent("Change", FCX1M2)
  CX1X2.OnEvent("Change", FCX1X2)
  CX1_2.OnEvent("Change", FCX1_2)
  CX1L3.OnEvent("Change", FCX1L3)
  CX1R3.OnEvent("Change", FCX1R3)
  CX1M3.OnEvent("Change", FCX1M3)
  CX1X3.OnEvent("Change", FCX1X3)
  CX1_3.OnEvent("Change", FCX1_3)

  RX2U1.OnEvent("Change", FRX2U1)
  RX2D1.OnEvent("Change", FRX2D1)
  RX2U2.OnEvent("Change", FRX2U2)
  RX2D2.OnEvent("Change", FRX2D2)
  RX2U3.OnEvent("Change", FRX2U3)
  RX2D3.OnEvent("Change", FRX2D3)
  RX1U1.OnEvent("Change", FRX1U1)
  RX1D1.OnEvent("Change", FRX1D1)
  RX1U2.OnEvent("Change", FRX1U2)
  RX1D2.OnEvent("Change", FRX1D2)
  RX1U3.OnEvent("Change", FRX1U3)
  RX1D3.OnEvent("Change", FRX1D3)

  MX2L1.OnEvent("Change", FMX2L1)
  MX2R1.OnEvent("Change", FMX2R1)
  MX2M1.OnEvent("Change", FMX2M1)
  MX2L2.OnEvent("Change", FMX2L2)
  MX2R2.OnEvent("Change", FMX2R2)
  MX2M2.OnEvent("Change", FMX2M2)
  MX2L3.OnEvent("Change", FMX2L3)
  MX2R3.OnEvent("Change", FMX2R3)
  MX2M3.OnEvent("Change", FMX2M3)
  MX1L1.OnEvent("Change", FMX1L1)
  MX1R1.OnEvent("Change", FMX1R1)
  MX1M1.OnEvent("Change", FMX1M1)
  MX1L2.OnEvent("Change", FMX1L2)
  MX1R2.OnEvent("Change", FMX1R2)
  MX1M2.OnEvent("Change", FMX1M2)
  MX1L3.OnEvent("Change", FMX1L3)
  MX1R3.OnEvent("Change", FMX1R3)
  MX1M3.OnEvent("Change", FMX1M3)

  Button1.OnEvent("Click", FButton1)
  Button2.OnEvent("Click", FButton2)
  Button3.OnEvent("Click", FButton3)
  Button4.OnEvent("Click", FButton4)
  Button5.OnEvent("Click", FButton1)
  Button6.OnEvent("Click", FButton2)
  Button7.OnEvent("Click", FButton3)
  Button8.OnEvent("Click", FButton4)
  Button9.OnEvent("Click", FButton1)
  Button10.OnEvent("Click", FButton2)
  Button11.OnEvent("Click", FButton3)
  Button12.OnEvent("Click", FButton4)
  Button13.OnEvent("Click", FButton1)
  Button14.OnEvent("Click", FButton2)
  Button15.OnEvent("Click", FButton3)
  Button16.OnEvent("Click", FButton4)


  myGui.OnEvent('Close', (*) => FButton4())

  myGui.Title := "SideKeyMaster(鼠标侧键增强软件)             作者:Zephyr Three            QQ群:499240992"

  return myGui
}

;按钮函数------------------------------------------------------------------------------------------------------------------------------------------------------

FButton1(*)
{
  Run "帮助文档.docx"
}

FButton2(*)
{
  FileCopy "Origin\1.ini", "1.ini", True
  IMode := IniRead("1.ini", "Mode", "Mode")

  ICX2L1 := IniRead("1.ini", "Click", "CX2L1")
  ICX2R1 := IniRead("1.ini", "Click", "CX2R1")
  ICX2M1 := IniRead("1.ini", "Click", "CX2M1")
  ICX2X1 := IniRead("1.ini", "Click", "CX2X1")
  ICX2_1 := IniRead("1.ini", "Click", "CX2_1")
  ICX2L2 := IniRead("1.ini", "Click", "CX2L2")
  ICX2R2 := IniRead("1.ini", "Click", "CX2R2")
  ICX2M2 := IniRead("1.ini", "Click", "CX2M2")
  ICX2X2 := IniRead("1.ini", "Click", "CX2X2")
  ICX2_2 := IniRead("1.ini", "Click", "CX2_2")
  ICX2L3 := IniRead("1.ini", "Click", "CX2L3")
  ICX2R3 := IniRead("1.ini", "Click", "CX2R3")
  ICX2M3 := IniRead("1.ini", "Click", "CX2M3")
  ICX2X3 := IniRead("1.ini", "Click", "CX2X3")
  ICX2_3 := IniRead("1.ini", "Click", "CX2_3")
  ICX1L1 := IniRead("1.ini", "Click", "CX1L1")
  ICX1R1 := IniRead("1.ini", "Click", "CX1R1")
  ICX1M1 := IniRead("1.ini", "Click", "CX1M1")
  ICX1X1 := IniRead("1.ini", "Click", "CX1X1")
  ICX1_1 := IniRead("1.ini", "Click", "CX1_1")
  ICX1L2 := IniRead("1.ini", "Click", "CX1L2")
  ICX1R2 := IniRead("1.ini", "Click", "CX1R2")
  ICX1M2 := IniRead("1.ini", "Click", "CX1M2")
  ICX1X2 := IniRead("1.ini", "Click", "CX1X2")
  ICX1_2 := IniRead("1.ini", "Click", "CX1_2")
  ICX1L3 := IniRead("1.ini", "Click", "CX1L3")
  ICX1R3 := IniRead("1.ini", "Click", "CX1R3")
  ICX1M3 := IniRead("1.ini", "Click", "CX1M3")
  ICX1X3 := IniRead("1.ini", "Click", "CX1X3")
  ICX1_3 := IniRead("1.ini", "Click", "CX1_3")

  IRX2U1 := IniRead("1.ini", "Roll", "RX2U1")
  IRX2D1 := IniRead("1.ini", "Roll", "RX2D1")
  IRX2U2 := IniRead("1.ini", "Roll", "RX2U2")
  IRX2D2 := IniRead("1.ini", "Roll", "RX2D2")
  IRX2U3 := IniRead("1.ini", "Roll", "RX2U3")
  IRX2D3 := IniRead("1.ini", "Roll", "RX2D3")
  IRX1U1 := IniRead("1.ini", "Roll", "RX1U1")
  IRX1D1 := IniRead("1.ini", "Roll", "RX1D1")
  IRX1U2 := IniRead("1.ini", "Roll", "RX1U2")
  IRX1D2 := IniRead("1.ini", "Roll", "RX1D2")
  IRX1U3 := IniRead("1.ini", "Roll", "RX1U3")
  IRX1D3 := IniRead("1.ini", "Roll", "RX1D3")

  IMX2L1 := IniRead("1.ini", "Move", "MX2L1")
  IMX2R1 := IniRead("1.ini", "Move", "MX2R1")
  IMX2M1 := IniRead("1.ini", "Move", "MX2M1")
  IMX2L2 := IniRead("1.ini", "Move", "MX2L2")
  IMX2R2 := IniRead("1.ini", "Move", "MX2R2")
  IMX2M2 := IniRead("1.ini", "Move", "MX2M2")
  IMX2L3 := IniRead("1.ini", "Move", "MX2L3")
  IMX2R3 := IniRead("1.ini", "Move", "MX2R3")
  IMX2M3 := IniRead("1.ini", "Move", "MX2M3")
  IMX1L1 := IniRead("1.ini", "Move", "MX1L1")
  IMX1R1 := IniRead("1.ini", "Move", "MX1R1")
  IMX1M1 := IniRead("1.ini", "Move", "MX1M1")
  IMX1L2 := IniRead("1.ini", "Move", "MX1L2")
  IMX1R2 := IniRead("1.ini", "Move", "MX1R2")
  IMX1M2 := IniRead("1.ini", "Move", "MX1M2")
  IMX1L3 := IniRead("1.ini", "Move", "MX1L3")
  IMX1R3 := IniRead("1.ini", "Move", "MX1R3")
  IMX1M3 := IniRead("1.ini", "Move", "MX1M3")

  If (IMode = 1)
  {
    Mode1.Value := 1
  }
  else If (IMode = 2)
  {
    Mode2.Value := 1
  }
  else If (IMode = 3)
  {
    Mode3.Value := 1
  }

  IClickFun(a1, a2)
  {
    if (a1 = 1)
    {
      a2.Text := "无"
    }
    else if (a1 = 2)
    {
      a2.Text := "自己映射按键"
    }
    else if (a1 = 3)
    {
      a2.Text := "前进"
    }
    else if (a1 = 4)
    {
      a2.Text := "后退"
    }
    else if (a1 = 5)
    {
      a2.Text := "撤销"
    }
    else if (a1 = 6)
    {
      a2.Text := "重做"
    }
    else if (a1 = 7)
    {
      a2.Text := "全选"
    }
    else if (a1 = 8)
    {
      a2.Text := "复制"
    }
    else if (a1 = 9)
    {
      a2.Text := "粘贴"
    }
    else if (a1 = 10)
    {
      a2.Text := "剪切"
    }
    else if (a1 = 11)
    {
      a2.Text := "切换剪贴板+1"
    }
    else if (a1 = 12)
    {
      a2.Text := "切换剪贴板-1"
    }
    else if (a1 = 13)
    {
      a2.Text := "提示剪贴板内容"
    }
    else if (a1 = 14)
    {
      a2.Text := "无格式粘贴"
    }
    else if (a1 = 15)
    {
      a2.Text := "清除选中文字格式"
    }
    else if (a1 = 16)
    {
      a2.Text := "清除剪贴板中文字格式"
    }
    else if (a1 = 17)
    {
      a2.Text := "关闭窗口"
    }
    else if (a1 = 18)
    {
      a2.Text := "切换模式+1"
    }
    else if (a1 = 19)
    {
      a2.Text := "切换模式-1"
    }
  }

  IRollFun(b1, b2)
  {
    if (b1 = 1)
    {
      b2.Text := "无"
    }
    else if (b1 = 2)
    {
      b2.Text := "自己映射按键"
    }
    else if (b1 = 3)
    {
      b2.Text := "向上滚轮加速"
    }
    else if (b1 = 4)
    {
      b2.Text := "向下滚轮加速"
    }
    else if (b1 = 5)
    {
      b2.Text := "向左滚轮"
    }
    else if (b1 = 6)
    {
      b2.Text := "向右滚轮"
    }
    else if (b1 = 7)
    {
      b2.Text := "放大"
    }
    else if (b1 = 8)
    {
      b2.Text := "缩小"
    }
    else if (b1 = 9)
    {
      b2.Text := "前进"
    }
    else if (b1 = 10)
    {
      b2.Text := "后退"
    }
    else if (b1 = 11)
    {
      b2.Text := "撤销"
    }
    else if (b1 = 12)
    {
      b2.Text := "重做"
    }
    else if (b1 = 13)
    {
      b2.Text := "切换剪贴板+1"
    }
    else if (b1 = 14)
    {
      b2.Text := "切换剪贴板-1"
    }
    else if (b1 = 15)
    {
      b2.Text := "切换模式+1"
    }
    else if (b1 = 16)
    {
      b2.Text := "切换模式-1"
    }
  }

  IMoveFun(c1, c2)
  {
    if (c1 = 1)
    {
      c2.Text := "无"
    }
    else if (c1 = 2)
    {
      c2.Text := "自己映射移动连续触发"
    }
    else if (c1 = 3)
    {
      c2.Text := "自己映射移动单次触发"
    }
    else if (c1 = 4)
    {
      c2.Text := "任意一点拖动窗口"
    }
    else if (c1 = 5)
    {
      c2.Text := "窗口上下左右贴边"
    }
    else if (c1 = 6)
    {
      c2.Text := "任意一点调整窗口尺寸"
    }
    else if (c1 = 7)
    {
      c2.Text := "移动连续触发上下左右"
    }
    else if (c1 = 8)
    {
      c2.Text := "移动连续触发空格、回车、退格、Del"
    }
    else if (c1 = 9)
    {
      c2.Text := "移动连续触发选中上下左右"
    }
    else if (c1 = 10)
    {
      c2.Text := "放大缩小和横向滚轮"
    }
  }

  IClickFun(ICX2L1, CX2L1)
  IClickFun(ICX2R1, CX2R1)
  IClickFun(ICX2M1, CX2M1)
  IClickFun(ICX2X1, CX2X1)
  IClickFun(ICX2_1, CX2_1)
  IClickFun(ICX2L2, CX2L2)
  IClickFun(ICX2R2, CX2R2)
  IClickFun(ICX2M2, CX2M2)
  IClickFun(ICX2X2, CX2X2)
  IClickFun(ICX2_2, CX2_2)
  IClickFun(ICX2L3, CX2L3)
  IClickFun(ICX2R3, CX2R3)
  IClickFun(ICX2M3, CX2M3)
  IClickFun(ICX2X3, CX2X3)
  IClickFun(ICX2_3, CX2_3)
  IClickFun(ICX1L1, CX1L1)
  IClickFun(ICX1R1, CX1R1)
  IClickFun(ICX1M1, CX1M1)
  IClickFun(ICX1X1, CX1X1)
  IClickFun(ICX1_1, CX1_1)
  IClickFun(ICX1L2, CX1L2)
  IClickFun(ICX1R2, CX1R2)
  IClickFun(ICX1M2, CX1M2)
  IClickFun(ICX1X2, CX1X2)
  IClickFun(ICX1_2, CX1_2)
  IClickFun(ICX1L3, CX1L3)
  IClickFun(ICX1R3, CX1R3)
  IClickFun(ICX1M3, CX1M3)
  IClickFun(ICX1X3, CX1X3)
  IClickFun(ICX1_3, CX1_3)

  IRollFun(IRX2U1, RX2U1)
  IRollFun(IRX2D1, RX2D1)
  IRollFun(IRX2U2, RX2U2)
  IRollFun(IRX2D2, RX2D2)
  IRollFun(IRX2U3, RX2U3)
  IRollFun(IRX2D3, RX2D3)
  IRollFun(IRX1U1, RX1U1)
  IRollFun(IRX1D1, RX1D1)
  IRollFun(IRX1U2, RX1U2)
  IRollFun(IRX1D2, RX1D2)
  IRollFun(IRX1U3, RX1U3)
  IRollFun(IRX1D3, RX1D3)

  IMoveFun(IMX2L1, MX2L1)
  IMoveFun(IMX2R1, MX2R1)
  IMoveFun(IMX2M1, MX2M1)
  IMoveFun(IMX2L2, MX2L2)
  IMoveFun(IMX2R2, MX2R2)
  IMoveFun(IMX2M2, MX2M2)
  IMoveFun(IMX2L3, MX2L3)
  IMoveFun(IMX2R3, MX2R3)
  IMoveFun(IMX2M3, MX2M3)
  IMoveFun(IMX1L1, MX1L1)
  IMoveFun(IMX1R1, MX1R1)
  IMoveFun(IMX1M1, MX1M1)
  IMoveFun(IMX1L2, MX1L2)
  IMoveFun(IMX1R2, MX1R2)
  IMoveFun(IMX1M2, MX1M2)
  IMoveFun(IMX1L3, MX1L3)
  IMoveFun(IMX1R3, MX1R3)
  IMoveFun(IMX1M3, MX1M3)
}

FButton3(*)
{
  myGui.Destroy()
  FileDelete "Temp\1.ini"
  If ProcessExist("SideKeyMaster.exe")
  {
    ProcessClose "SideKeyMaster.exe"
    Run "SideKeyMaster.exe"
  }
  ExitApp
}

FButton4(*)
{
  myGui.Destroy()
  FileMove "Temp\1.ini", "1.ini", True
  ExitApp
}

;模式函数------------------------------------------------------------------------------------------------------------------------------------------------------

Mode(*)
{
  if (Mode1.Value = 1)
  {
    IniWrite "1", "1.ini", "Mode", "Mode"
  }
  else if (Mode2.Value = 1)
  {
    IniWrite "2", "1.ini", "Mode", "Mode"
  }
  else if (Mode3.Value = 1)
  {
    IniWrite "3", "1.ini", "Mode", "Mode"
  }
}

;点击函数------------------------------------------------------------------------------------------------------------------------------------------------------

ClickFun(*)
{
  global Cli, Clic
  if (Cli.Text = "无")
  {
    IniWrite "1", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "自己映射按键")
  {
    IniWrite "2", "1.ini", "Click", Clic
    GClick := Constructor1()
    GClick.Show("w512 h240")
  }
  else if (Cli.Text = "前进")
  {
    IniWrite "3", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "后退")
  {
    IniWrite "4", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "撤销")
  {
    IniWrite "5", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "重做")
  {
    IniWrite "6", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "全选")
  {
    IniWrite "7", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "复制")
  {
    IniWrite "8", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "粘贴")
  {
    IniWrite "9", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "剪切")
  {
    IniWrite "10", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "切换剪贴板+1")
  {
    IniWrite "11", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "切换剪贴板-1")
  {
    IniWrite "12", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "提示剪贴板内容")
  {
    IniWrite "13", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "无格式粘贴")
  {
    IniWrite "14", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "清除选中文字格式")
  {
    IniWrite "15", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "清除剪贴板中文字格式")
  {
    IniWrite "16", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "关闭窗口")
  {
    IniWrite "17", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "切换模式+1")
  {
    IniWrite "18", "1.ini", "Click", Clic
  }
  else if (Cli.Text = "切换模式-1")
  {
    IniWrite "19", "1.ini", "Click", Clic
  }
}

Constructor1()
{
  global
  GClick := Gui()
  GClick.SetFont("s12")

  HKey1 := GClick.Add("Hotkey", "x56 y56 w150 h32")

  Win1 := GClick.Add("CheckBox", "x224 y48 w219 h43", "是否添加Win键")
  Act1 := GClick.Add("CheckBox", "x56 y112 w268 h58", "是否激活鼠标所在窗口")

  GClick.Add("Text", "x56 y16 w120 h23 +0x200", "映射键:")
  Buton1 := GClick.Add("Button", "x320 y208 w80 h23", "&确定")
  Buton2 := GClick.Add("Button", "x416 y208 w80 h23", "&取消")

  Buton1.OnEvent("Click", FButon1)
  Buton2.OnEvent("Click", FButon2)
  GClick.OnEvent('Close', (*) => FButon2())
  GClick.Title := "映射按键（点击和滚轮）"

  return GClick
}

FButon1(*)
{
  HoKey1 := String(HKey1.Value)
  if (RegExMatch(HoKey1, "\A[\^!+]+"))
  {
    HoKey1 := RegExReplace(HoKey1, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey1 := "{" . HoKey1 . "}"
  }
  if Win1.Value
  {
    IniWrite "#" HoKey1, "1.ini", "CRKey", "K" Clic
  }
  else
  {
    IniWrite HoKey1, "1.ini", "CRKey", "K" Clic
  }
  if Act1.Value
  {
    IniWrite "1", "1.ini", "Win", "W" Clic
  }
  else
  {
    IniWrite "0", "1.ini", "Win", "W" Clic
  }
  GClick.Destroy()
}

FButon2(*)
{
  Cli.Text := "无"
  GClick.Destroy()
}

FCX2L1(*)
{
  global Cli, Clic
  Cli := CX2L1
  Clic := "CX2L1"
  ClickFun
}

FCX2R1(*)
{
  global Cli, Clic
  Cli := CX2R1
  Clic := "CX2R1"
  ClickFun
}

FCX2M1(*)
{
  global Cli, Clic
  Cli := CX2M1
  Clic := "CX2M1"
  ClickFun
}

FCX2X1(*)
{
  global Cli, Clic
  Cli := CX2X1
  Clic := "CX2X1"
  ClickFun
}

FCX2_1(*)
{
  global Cli, Clic
  Cli := CX2_1
  Clic := "CX2_1"
  ClickFun
}

FCX2L2(*)
{
  global Cli, Clic
  Cli := CX2L2
  Clic := "CX2L2"
  ClickFun
}

FCX2R2(*)
{
  global Cli, Clic
  Cli := CX2R2
  Clic := "CX2R2"
  ClickFun
}

FCX2M2(*)
{
  global Cli, Clic
  Cli := CX2M2
  Clic := "CX2M2"
  ClickFun
}

FCX2X2(*)
{
  global Cli, Clic
  Cli := CX2X2
  Clic := "CX2X2"
  ClickFun
}

FCX2_2(*)
{
  global Cli, Clic
  Cli := CX2_2
  Clic := "CX2_2"
  ClickFun
}

FCX2L3(*)
{
  global Cli, Clic
  Cli := CX2L3
  Clic := "CX2L3"
  ClickFun
}

FCX2R3(*)
{
  global Cli, Clic
  Cli := CX2R3
  Clic := "CX2R3"
  ClickFun
}

FCX2M3(*)
{
  global Cli, Clic
  Cli := CX2M3
  Clic := "CX2M3"
  ClickFun
}

FCX2X3(*)
{
  global Cli, Clic
  Cli := CX2X3
  Clic := "CX2X3"
  ClickFun
}

FCX2_3(*)
{
  global Cli, Clic
  Cli := CX2_3
  Clic := "CX2_3"
  ClickFun
}

FCX1L1(*)
{
  global Cli, Clic
  Cli := CX1L1
  Clic := "CX1L1"
  ClickFun
}

FCX1R1(*)
{
  global Cli, Clic
  Cli := CX1R1
  Clic := "CX1R1"
  ClickFun
}

FCX1M1(*)
{
  global Cli, Clic
  Cli := CX1M1
  Clic := "CX1M1"
  ClickFun
}

FCX1X1(*)
{
  global Cli, Clic
  Cli := CX1X1
  Clic := "CX1X1"
  ClickFun
}

FCX1_1(*)
{
  global Cli, Clic
  Cli := CX1_1
  Clic := "CX1_1"
  ClickFun
}

FCX1L2(*)
{
  global Cli, Clic
  Cli := CX1L2
  Clic := "CX1L2"
  ClickFun
}

FCX1R2(*)
{
  global Cli, Clic
  Cli := CX1R2
  Clic := "CX1R2"
  ClickFun
}

FCX1M2(*)
{
  global Cli, Clic
  Cli := CX1M2
  Clic := "CX1M2"
  ClickFun
}

FCX1X2(*)
{
  global Cli, Clic
  Cli := CX1X2
  Clic := "CX1X2"
  ClickFun
}

FCX1_2(*)
{
  global Cli, Clic
  Cli := CX1_2
  Clic := "CX1_2"
  ClickFun
}

FCX1L3(*)
{
  global Cli, Clic
  Cli := CX1L3
  Clic := "CX1L3"
  ClickFun
}

FCX1R3(*)
{
  global Cli, Clic
  Cli := CX1R3
  Clic := "CX1R3"
  ClickFun
}

FCX1M3(*)
{
  global Cli, Clic
  Cli := CX1M3
  Clic := "CX1M3"
  ClickFun
}

FCX1X3(*)
{
  global Cli, Clic
  Cli := CX1X3
  Clic := "CX1X3"
  ClickFun
}

FCX1_3(*)
{
  global Cli, Clic
  Cli := CX1_3
  Clic := "CX1_3"
  ClickFun
}

;滚轮函数------------------------------------------------------------------------------------------------------------------------------------------------------

RollFun(*)
{
  global Rol, Roll
  if (Rol.Text = "无")
  {
    IniWrite "1", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "自己映射按键")
  {
    IniWrite "2", "1.ini", "Roll", Roll

    GRoll := Constructor2()
    GRoll.Show("w512 h240")
  }
  else if (Rol.Text = "向上滚轮加速")
  {
    IniWrite "3", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "向下滚轮加速")
  {
    IniWrite "4", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "向左滚轮")
  {
    IniWrite "5", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "向右滚轮")
  {
    IniWrite "6", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "放大")
  {
    IniWrite "7", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "缩小")
  {
    IniWrite "8", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "前进")
  {
    IniWrite "9", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "后退")
  {
    IniWrite "10", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "撤销")
  {
    IniWrite "11", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "重做")
  {
    IniWrite "12", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "切换剪贴板+1")
  {
    IniWrite "13", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "切换剪贴板-1")
  {
    IniWrite "14", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "切换模式+1")
  {
    IniWrite "15", "1.ini", "Roll", Roll
  }
  else if (Rol.Text = "切换模式-1")
  {
    IniWrite "16", "1.ini", "Roll", Roll
  }
}

Constructor2()
{
  global
  GRoll := Gui()
  GRoll.SetFont("s12")

  HKey2 := GRoll.Add("Hotkey", "x56 y56 w150 h32")

  Win2 := GRoll.Add("CheckBox", "x224 y48 w219 h43", "是否添加Win键")
  Act2 := GRoll.Add("CheckBox", "x56 y112 w268 h58", "是否激活鼠标所在窗口")

  GRoll.Add("Text", "x56 y16 w120 h23 +0x200", "映射键:")
  Buton3 := GRoll.Add("Button", "x320 y208 w80 h23", "&确定")
  Buton4 := GRoll.Add("Button", "x416 y208 w80 h23", "&取消")

  Buton3.OnEvent("Click", FButon3)
  Buton4.OnEvent("Click", FButon4)
  GRoll.OnEvent('Close', (*) => FButon4())
  GRoll.Title := "映射按键（点击和滚轮）"

  return GRoll
}

FButon3(*)
{
  HoKey2 := String(HKey2.Value)
  if (RegExMatch(HoKey2, "\A[\^!+]+"))
  {
    HoKey2 := RegExReplace(HoKey2, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey2 := "{" . HoKey2 . "}"
  }
  if Win2.Value
  {
    IniWrite "#" HoKey2, "1.ini", "CRKey", "K" Roll
  }
  else
  {
    IniWrite HoKey2, "1.ini", "CRKey", "K" Roll
  }
  if Act2.Value
  {
    IniWrite "1", "1.ini", "Win", "W" Roll
  }
  else
  {
    IniWrite "0", "1.ini", "Win", "W" Roll
  }
  GRoll.Destroy()
}

FButon4(*)
{
  Rol.Text := "无"
  GRoll.Destroy()
}

FRX2U1(*)
{
  global Rol, Roll
  Rol := RX2U1
  Roll := "RX2U1"
  RollFun
}

FRX2D1(*)
{
  global Rol, Roll
  Rol := RX2D1
  Roll := "RX2D1"
  RollFun
}

FRX2U2(*)
{
  global Rol, Roll
  Rol := RX2U2
  Roll := "RX2U2"
  RollFun
}

FRX2D2(*)
{
  global Rol, Roll
  Rol := RX2D2
  Roll := "RX2D2"
  RollFun
}

FRX2U3(*)
{
  global Rol, Roll
  Rol := RX2U3
  Roll := "RX2U3"
  RollFun
}

FRX2D3(*)
{
  global Rol, Roll
  Rol := RX2D3
  Roll := "RX2D3"
  RollFun
}

FRX1U1(*)
{
  global Rol, Roll
  Rol := RX1U1
  Roll := "RX1U1"
  RollFun
}

FRX1D1(*)
{
  global Rol, Roll
  Rol := RX1D1
  Roll := "RX1D1"
  RollFun
}

FRX1U2(*)
{
  global Rol, Roll
  Rol := RX1U2
  Roll := "RX1U2"
  RollFun
}

FRX1D2(*)
{
  global Rol, Roll
  Rol := RX1D2
  Roll := "RX1D2"
  RollFun
}

FRX1U3(*)
{
  global Rol, Roll
  Rol := RX1U3
  Roll := "RX1U3"
  RollFun
}

FRX1D3(*)
{
  global Rol, Roll
  Rol := RX1D3
  Roll := "RX1D3"
  RollFun
}

;移动函数------------------------------------------------------------------------------------------------------------------------------------------------------

MoveFun(*)
{
  global Mov, Move
  if (Mov.Text = "无")
  {
    IniWrite "1", "1.ini", "Move", Move
  }
  else if (Mov.Text = "自己映射移动连续触发")
  {
    IniWrite "2", "1.ini", "Move", Move

    GMove1 := Constructor3()
    GMove1.Show("w483 h335")
  }
  else if (Mov.Text = "自己映射移动单次触发")
  {
    IniWrite "3", "1.ini", "Move", Move

    GMove2 := Constructor4()
    GMove2.Show("w483 h335")
  }
  else if (Mov.Text = "任意一点拖动窗口")
  {
    IniWrite "4", "1.ini", "Move", Move
  }
  else if (Mov.Text = "窗口上下左右贴边")
  {
    IniWrite "5", "1.ini", "Move", Move
  }
  else if (Mov.Text = "任意一点调整窗口尺寸")
  {
    IniWrite "6", "1.ini", "Move", Move
  }
  else if (Mov.Text = "移动连续触发上下左右")
  {
    IniWrite "7", "1.ini", "Move", Move
  }
  else if (Mov.Text = "移动连续触发空格、回车、退格、Del")
  {
    IniWrite "8", "1.ini", "Move", Move
  }
  else if (Mov.Text = "移动连续触发选中上下左右")
  {
    IniWrite "9", "1.ini", "Move", Move
  }
  else if (Mov.Text = "放大缩小和横向滚轮")
  {
    IniWrite "10", "1.ini", "Move", Move
  }
}

Constructor3()
{
  global
  GMove1 := Gui()
  GMove1.SetFont("s12")

  HKey3 := GMove1.Add("Hotkey", "x88 y56 w150 h28")
  HKey4 := GMove1.Add("Hotkey", "x88 y120 w150 h28")
  HKey5 := GMove1.Add("Hotkey", "x88 y184 w150 h29")
  HKey6 := GMove1.Add("Hotkey", "x88 y248 w150 h29")

  Win3 := GMove1.Add("CheckBox", "x256 y48 w219 h43", "是否添加Win键")
  Win4 := GMove1.Add("CheckBox", "x256 y112 w219 h43", "是否添加Win键")
  Win5 := GMove1.Add("CheckBox", "x256 y176 w219 h43", "是否添加Win键")
  Win6 := GMove1.Add("CheckBox", "x256 y240 w219 h43", "是否添加Win键")

  GMove1.Add("Text", "x88 y16 w120 h23 +0x200", "映射键:")
  GMove1.Add("Text", "x8 y56 w62 h23 +0x200", "向上")
  GMove1.Add("Text", "x8 y120 w62 h23 +0x200", "向下")
  GMove1.Add("Text", "x8 y184 w62 h23 +0x200", "向左")
  GMove1.Add("Text", "x8 y248 w62 h23 +0x200", "向右")
  Buton5 := GMove1.Add("Button", "x296 y304 w80 h23", "&确定")
  Buton6 := GMove1.Add("Button", "x392 y304 w80 h23", "&取消")

  Buton5.OnEvent("Click", FButon5)
  Buton6.OnEvent("Click", FButon6)
  GMove1.OnEvent('Close', (*) => FButon6())
  GMove1.Title := "映射按键（按住移动连续触发）"

  return GMove1
}

FButon5(*)
{
  HoKey3 := String(HKey3.Value)
  HoKey4 := String(HKey4.Value)
  HoKey5 := String(HKey5.Value)
  HoKey6 := String(HKey6.Value)
  if (RegExMatch(HoKey3, "\A[\^!+]+"))
  {
    HoKey3 := RegExReplace(HoKey3, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey3 := "{" . HoKey3 . "}"
  }
  if (RegExMatch(HoKey4, "\A[\^!+]+"))
  {
    HoKey4 := RegExReplace(HoKey4, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey4 := "{" . HoKey4 . "}"
  }
  if (RegExMatch(HoKey5, "\A[\^!+]+"))
  {
    HoKey5 := RegExReplace(HoKey5, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey5 := "{" . HoKey5 . "}"
  }
  if (RegExMatch(HoKey6, "\A[\^!+]+"))
  {
    HoKey6 := RegExReplace(HoKey6, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey6 := "{" . HoKey6 . "}"
  }
  if Win3.Value
  {
    IniWrite "#" HoKey3, "1.ini", "MKey", "K1" Move
  }
  else
  {
    IniWrite HoKey3, "1.ini", "MKey", "K1" Move
  }

  if Win4.Value
  {
    IniWrite "#" HoKey4, "1.ini", "MKey", "K2" Move
  }
  else
  {
    IniWrite HoKey4, "1.ini", "MKey", "K2" Move
  }

  if Win5.Value
  {
    IniWrite "#" HoKey5, "1.ini", "MKey", "K3" Move
  }
  else
  {
    IniWrite HoKey5, "1.ini", "MKey", "K3" Move
  }

  if Win6.Value
  {
    IniWrite "#" HoKey6, "1.ini", "MKey", "K4" Move
  }
  else
  {
    IniWrite HoKey6, "1.ini", "MKey", "K4" Move
  }

  GMove1.Destroy()
}

FButon6(*)
{
  Mov.Text := "无"
  GMove1.Destroy()
}

Constructor4()
{
  global
  GMove2 := Gui()
  GMove2.SetFont("s12")

  HKey7 := GMove2.Add("Hotkey", "x88 y56 w150 h28")
  HKey8 := GMove2.Add("Hotkey", "x88 y120 w150 h28")
  HKey9 := GMove2.Add("Hotkey", "x88 y184 w150 h29")
  HKey10 := GMove2.Add("Hotkey", "x88 y248 w150 h29")

  Win7 := GMove2.Add("CheckBox", "x256 y48 w219 h43", "是否添加Win键")
  Win8 := GMove2.Add("CheckBox", "x256 y112 w219 h43", "是否添加Win键")
  Win9 := GMove2.Add("CheckBox", "x256 y176 w219 h43", "是否添加Win键")
  Win10 := GMove2.Add("CheckBox", "x256 y240 w219 h43", "是否添加Win键")

  GMove2.Add("Text", "x88 y16 w120 h23 +0x200", "映射键:")
  GMove2.Add("Text", "x8 y56 w62 h23 +0x200", "向上")
  GMove2.Add("Text", "x8 y120 w62 h23 +0x200", "向下")
  GMove2.Add("Text", "x8 y184 w62 h23 +0x200", "向左")
  GMove2.Add("Text", "x8 y248 w62 h23 +0x200", "向右")
  Buton7 := GMove2.Add("Button", "x296 y304 w80 h23", "&确定")
  Buton8 := GMove2.Add("Button", "x392 y304 w80 h23", "&取消")

  Buton7.OnEvent("Click", FButon7)
  Buton8.OnEvent("Click", FButon8)
  GMove2.OnEvent('Close', (*) => FButon8())
  GMove2.Title := "映射按键（按住移动单次触发）"

  return GMove2
}

FButon7(*)
{
  HoKey7 := String(HKey7.Value)
  HoKey8 := String(HKey8.Value)
  HoKey9 := String(HKey9.Value)
  HoKey10 := String(HKey10.Value)
  if (RegExMatch(HoKey7, "\A[\^!+]+"))
  {
    HoKey7 := RegExReplace(HoKey7, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey7 := "{" . HoKey7 . "}"
  }
  if (RegExMatch(HoKey8, "\A[\^!+]+"))
  {
    HoKey8 := RegExReplace(HoKey8, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey8 := "{" . HoKey8 . "}"
  }
  if (RegExMatch(HoKey9, "\A[\^!+]+"))
  {
    HoKey9 := RegExReplace(HoKey9, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey9 := "{" . HoKey9 . "}"
  }
  if (RegExMatch(HoKey10, "\A[\^!+]+"))
  {
    HoKey10 := RegExReplace(HoKey10, "(\A[\^!+]+)", "$1{") . "}"
  }
  else
  {
    HoKey10 := "{" . HoKey10 . "}"
  }
  if Win7.Value
  {
    IniWrite "#" HoKey7, "1.ini", "MKey", "K5" Move
  }
  else
  {
    IniWrite HoKey7, "1.ini", "MKey", "K5" Move
  }

  if Win8.Value
  {
    IniWrite "#" HoKey8, "1.ini", "MKey", "K6" Move
  }
  else
  {
    IniWrite HoKey8, "1.ini", "MKey", "K6" Move
  }

  if Win9.Value
  {
    IniWrite "#" HoKey9, "1.ini", "MKey", "K7" Move
  }
  else
  {
    IniWrite HoKey9, "1.ini", "MKey", "K7" Move
  }

  if Win10.Value
  {
    IniWrite "#" HoKey10, "1.ini", "MKey", "K8" Move
  }
  else
  {
    IniWrite HoKey10, "1.ini", "MKey", "K8" Move
  }

  GMove2.Destroy()
}

FButon8(*)
{
  Mov.Text := "无"
  GMove2.Destroy()
}

FMX2L1(*)
{
  global Mov, Move
  Mov := MX2L1
  Move := "MX2L1"
  MoveFun
}

FMX2R1(*)
{
  global Mov, Move
  Mov := MX2R1
  Move := "MX2R1"
  MoveFun
}

FMX2M1(*)
{
  global Mov, Move
  Mov := MX2M1
  Move := "MX2M1"
  MoveFun
}

FMX2L2(*)
{
  global Mov, Move
  Mov := MX2L2
  Move := "MX2L2"
  MoveFun
}

FMX2R2(*)
{
  global Mov, Move
  Mov := MX2R2
  Move := "MX2R2"
  MoveFun
}

FMX2M2(*)
{
  global Mov, Move
  Mov := MX2M2
  Move := "MX2M2"
  MoveFun
}

FMX2L3(*)
{
  global Mov, Move
  Mov := MX2L3
  Move := "MX2L3"
  MoveFun
}

FMX2R3(*)
{
  global Mov, Move
  Mov := MX2R3
  Move := "MX2R3"
  MoveFun
}

FMX2M3(*)
{
  global Mov, Move
  Mov := MX2M3
  Move := "MX2M3"
  MoveFun
}

FMX1L1(*)
{
  global Mov, Move
  Mov := MX1L1
  Move := "MX1L1"
  MoveFun
}

FMX1R1(*)
{
  global Mov, Move
  Mov := MX1R1
  Move := "MX1R1"
  MoveFun
}

FMX1M1(*)
{
  global Mov, Move
  Mov := MX1M1
  Move := "MX1M1"
  MoveFun
}

FMX1L2(*)
{
  global Mov, Move
  Mov := MX1L2
  Move := "MX1L2"
  MoveFun
}

FMX1R2(*)
{
  global Mov, Move
  Mov := MX1R2
  Move := "MX1R2"
  MoveFun
}

FMX1M2(*)
{
  global Mov, Move
  Mov := MX1M2
  Move := "MX1M2"
  MoveFun
}

FMX1L3(*)
{
  global Mov, Move
  Mov := MX1L3
  Move := "MX1L3"
  MoveFun
}

FMX1R3(*)
{
  global Mov, Move
  Mov := MX1R3
  Move := "MX1R3"
  MoveFun
}

FMX1M3(*)
{
  global Mov, Move
  Mov := MX1M3
  Move := "MX1M3"
  MoveFun
}