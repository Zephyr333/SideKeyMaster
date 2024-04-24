#SingleInstance Force

;第一次运行创建桌面快捷方式-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if IniRead("1.ini", "ShortCut", "ShortCut")
{
  if FileExist(A_Desktop "\SideKeyMaster.lnk")
  {
    FileDelete A_Desktop "\SideKeyMaster.lnk"
  }
  FileCreateShortcut A_ScriptFullPath, A_Desktop "\SideKeyMaster.lnk"
  IniWrite "0", "1.ini", "ShortCut", "ShortCut"
}

;以管理员身份运行--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
  try
  {
    if A_IsCompiled
      Run '*RunAs "' A_ScriptFullPath '" /restart'
    else
      Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
  }
  ExitApp
}

;创建托盘菜单设置双击菜单行为--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A_TrayMenu.Add()  ; 创建分隔线.
A_TrayMenu.Add("设置", Setting)  ; 创建新菜单项.
A_TrayMenu.Default := "设置"
A_TrayMenu.ClickCount := 1
A_TrayMenu.Add("开机启动", Startup)  ; 创建新菜单项.
A_TrayMenu.Add("桌面快捷方式", ShortCut)  ; 创建新菜单项.
A_TrayMenu.Add("暂停", Stop)  ; 创建新菜单项.
A_TrayMenu.Add("重启软件", load)  ; 创建新菜单项.
A_TrayMenu.Add("退出", Escape)


if FileExist(A_Startup "\SideKeyMaster.lnk")
{
  A_TrayMenu.Check("开机启动")
}

if FileExist(A_Desktop "\SideKeyMaster.lnk")
{
  A_TrayMenu.Check("桌面快捷方式")
}

Setting(ItemName, ItemPos, Menu)
{
  Run "Setting.exe"
}

Startup(ItemName, ItemPos, Menu)
{
  A_TrayMenu.ToggleCheck("开机启动")
  if FileExist(A_Startup "\SideKeyMaster.lnk")
  {
    FileDelete A_Startup "\SideKeyMaster.lnk"
  }
  else
  {
    FileCreateShortcut A_ScriptFullPath, A_Startup "\SideKeyMaster.lnk"
  }
}

ShortCut(ItemName, ItemPos, Menu)
{
  A_TrayMenu.ToggleCheck("桌面快捷方式")
  if FileExist(A_Desktop "\SideKeyMaster.lnk")
  {
    FileDelete A_Desktop "\SideKeyMaster.lnk"
  }
  else
  {
    FileCreateShortcut A_ScriptFullPath, A_Desktop "\SideKeyMaster.lnk"
  }
}

Stop(ItemName, ItemPos, Menu)
{
  A_TrayMenu.ToggleCheck("暂停")
  Suspend
}

load(ItemName, ItemPos, Menu)
{
  MsgBox "Reload", , "T1"
  Reload
}

Escape(ItemName, ItemPos, Menu)
{
  ExitApp
}

;初始化全局变量的值------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Set

Set()
{
  global
  Mode := IniRead("1.ini", "Mode", "Mode")
  Clip := 1
  Clip1 := ""
  Clip2 := ""
  Clip3 := ""
  Clip4 := ""
  Clip_2 := ""
  Clip_3 := ""
  Clip_4 := ""

  CX2L1 := IniRead("1.ini", "Click", "CX2L1")
  CX2R1 := IniRead("1.ini", "Click", "CX2R1")
  CX2M1 := IniRead("1.ini", "Click", "CX2M1")
  CX2X1 := IniRead("1.ini", "Click", "CX2X1")
  CX2_1 := IniRead("1.ini", "Click", "CX2_1")
  CX2L2 := IniRead("1.ini", "Click", "CX2L2")
  CX2R2 := IniRead("1.ini", "Click", "CX2R2")
  CX2M2 := IniRead("1.ini", "Click", "CX2M2")
  CX2X2 := IniRead("1.ini", "Click", "CX2X2")
  CX2_2 := IniRead("1.ini", "Click", "CX2_2")
  CX2L3 := IniRead("1.ini", "Click", "CX2L3")
  CX2R3 := IniRead("1.ini", "Click", "CX2R3")
  CX2M3 := IniRead("1.ini", "Click", "CX2M3")
  CX2X3 := IniRead("1.ini", "Click", "CX2X3")
  CX2_3 := IniRead("1.ini", "Click", "CX2_3")
  CX1L1 := IniRead("1.ini", "Click", "CX1L1")
  CX1R1 := IniRead("1.ini", "Click", "CX1R1")
  CX1M1 := IniRead("1.ini", "Click", "CX1M1")
  CX1X1 := IniRead("1.ini", "Click", "CX1X1")
  CX1_1 := IniRead("1.ini", "Click", "CX1_1")
  CX1L2 := IniRead("1.ini", "Click", "CX1L2")
  CX1R2 := IniRead("1.ini", "Click", "CX1R2")
  CX1M2 := IniRead("1.ini", "Click", "CX1M2")
  CX1X2 := IniRead("1.ini", "Click", "CX1X2")
  CX1_2 := IniRead("1.ini", "Click", "CX1_2")
  CX1L3 := IniRead("1.ini", "Click", "CX1L3")
  CX1R3 := IniRead("1.ini", "Click", "CX1R3")
  CX1M3 := IniRead("1.ini", "Click", "CX1M3")
  CX1X3 := IniRead("1.ini", "Click", "CX1X3")
  CX1_3 := IniRead("1.ini", "Click", "CX1_3")

  RX2U1 := IniRead("1.ini", "Roll", "RX2U1")
  RX2D1 := IniRead("1.ini", "Roll", "RX2D1")
  RX2U2 := IniRead("1.ini", "Roll", "RX2U2")
  RX2D2 := IniRead("1.ini", "Roll", "RX2D2")
  RX2U3 := IniRead("1.ini", "Roll", "RX2U3")
  RX2D3 := IniRead("1.ini", "Roll", "RX2D3")
  RX1U1 := IniRead("1.ini", "Roll", "RX1U1")
  RX1D1 := IniRead("1.ini", "Roll", "RX1D1")
  RX1U2 := IniRead("1.ini", "Roll", "RX1U2")
  RX1D2 := IniRead("1.ini", "Roll", "RX1D2")
  RX1U3 := IniRead("1.ini", "Roll", "RX1U3")
  RX1D3 := IniRead("1.ini", "Roll", "RX1D3")

  MX2L1 := IniRead("1.ini", "Move", "MX2L1")
  MX2R1 := IniRead("1.ini", "Move", "MX2R1")
  MX2M1 := IniRead("1.ini", "Move", "MX2M1")
  MX2L2 := IniRead("1.ini", "Move", "MX2L2")
  MX2R2 := IniRead("1.ini", "Move", "MX2R2")
  MX2M2 := IniRead("1.ini", "Move", "MX2M2")
  MX2L3 := IniRead("1.ini", "Move", "MX2L3")
  MX2R3 := IniRead("1.ini", "Move", "MX2R3")
  MX2M3 := IniRead("1.ini", "Move", "MX2M3")
  MX1L1 := IniRead("1.ini", "Move", "MX1L1")
  MX1R1 := IniRead("1.ini", "Move", "MX1R1")
  MX1M1 := IniRead("1.ini", "Move", "MX1M1")
  MX1L2 := IniRead("1.ini", "Move", "MX1L2")
  MX1R2 := IniRead("1.ini", "Move", "MX1R2")
  MX1M2 := IniRead("1.ini", "Move", "MX1M2")
  MX1L3 := IniRead("1.ini", "Move", "MX1L3")
  MX1R3 := IniRead("1.ini", "Move", "MX1R3")
  MX1M3 := IniRead("1.ini", "Move", "MX1M3")

  KCX2L1 := IniRead("1.ini", "CRKey", "KCX2L1")
  KCX2R1 := IniRead("1.ini", "CRKey", "KCX2R1")
  KCX2M1 := IniRead("1.ini", "CRKey", "KCX2M1")
  KCX2X1 := IniRead("1.ini", "CRKey", "KCX2X1")
  KCX2_1 := IniRead("1.ini", "CRKey", "KCX2_1")
  KCX2L2 := IniRead("1.ini", "CRKey", "KCX2L2")
  KCX2R2 := IniRead("1.ini", "CRKey", "KCX2R2")
  KCX2M2 := IniRead("1.ini", "CRKey", "KCX2M2")
  KCX2X2 := IniRead("1.ini", "CRKey", "KCX2X2")
  KCX2_2 := IniRead("1.ini", "CRKey", "KCX2_2")
  KCX2L3 := IniRead("1.ini", "CRKey", "KCX2L3")
  KCX2R3 := IniRead("1.ini", "CRKey", "KCX2R3")
  KCX2M3 := IniRead("1.ini", "CRKey", "KCX2M3")
  KCX2X3 := IniRead("1.ini", "CRKey", "KCX2X3")
  KCX2_3 := IniRead("1.ini", "CRKey", "KCX2_3")
  KCX1L1 := IniRead("1.ini", "CRKey", "KCX1L1")
  KCX1R1 := IniRead("1.ini", "CRKey", "KCX1R1")
  KCX1M1 := IniRead("1.ini", "CRKey", "KCX1M1")
  KCX1X1 := IniRead("1.ini", "CRKey", "KCX1X1")
  KCX1_1 := IniRead("1.ini", "CRKey", "KCX1_1")
  KCX1L2 := IniRead("1.ini", "CRKey", "KCX1L2")
  KCX1R2 := IniRead("1.ini", "CRKey", "KCX1R2")
  KCX1M2 := IniRead("1.ini", "CRKey", "KCX1M2")
  KCX1X2 := IniRead("1.ini", "CRKey", "KCX1X2")
  KCX1_2 := IniRead("1.ini", "CRKey", "KCX1_2")
  KCX1L3 := IniRead("1.ini", "CRKey", "KCX1L3")
  KCX1R3 := IniRead("1.ini", "CRKey", "KCX1R3")
  KCX1M3 := IniRead("1.ini", "CRKey", "KCX1M3")
  KCX1X3 := IniRead("1.ini", "CRKey", "KCX1X3")
  KCX1_3 := IniRead("1.ini", "CRKey", "KCX1_3")
  KRX2U1 := IniRead("1.ini", "CRKey", "KRX2U1")
  KRX2D1 := IniRead("1.ini", "CRKey", "KRX2D1")
  KRX2U2 := IniRead("1.ini", "CRKey", "KRX2U2")
  KRX2D2 := IniRead("1.ini", "CRKey", "KRX2D2")
  KRX2U3 := IniRead("1.ini", "CRKey", "KRX2U3")
  KRX2D3 := IniRead("1.ini", "CRKey", "KRX2D3")
  KRX1U1 := IniRead("1.ini", "CRKey", "KRX1U1")
  KRX1D1 := IniRead("1.ini", "CRKey", "KRX1D1")
  KRX1U2 := IniRead("1.ini", "CRKey", "KRX1U2")
  KRX1D2 := IniRead("1.ini", "CRKey", "KRX1D2")
  KRX1U3 := IniRead("1.ini", "CRKey", "KRX1U3")
  KRX1D3 := IniRead("1.ini", "CRKey", "KRX1D3")

  WCX2L1 := IniRead("1.ini", "Win", "WCX2L1")
  WCX2R1 := IniRead("1.ini", "Win", "WCX2R1")
  WCX2M1 := IniRead("1.ini", "Win", "WCX2M1")
  WCX2X1 := IniRead("1.ini", "Win", "WCX2X1")
  WCX2_1 := IniRead("1.ini", "Win", "WCX2_1")
  WCX2L2 := IniRead("1.ini", "Win", "WCX2L2")
  WCX2R2 := IniRead("1.ini", "Win", "WCX2R2")
  WCX2M2 := IniRead("1.ini", "Win", "WCX2M2")
  WCX2X2 := IniRead("1.ini", "Win", "WCX2X2")
  WCX2_2 := IniRead("1.ini", "Win", "WCX2_2")
  WCX2L3 := IniRead("1.ini", "Win", "WCX2L3")
  WCX2R3 := IniRead("1.ini", "Win", "WCX2R3")
  WCX2M3 := IniRead("1.ini", "Win", "WCX2M3")
  WCX2X3 := IniRead("1.ini", "Win", "WCX2X3")
  WCX2_3 := IniRead("1.ini", "Win", "WCX2_3")
  WCX1L1 := IniRead("1.ini", "Win", "WCX1L1")
  WCX1R1 := IniRead("1.ini", "Win", "WCX1R1")
  WCX1M1 := IniRead("1.ini", "Win", "WCX1M1")
  WCX1X1 := IniRead("1.ini", "Win", "WCX1X1")
  WCX1_1 := IniRead("1.ini", "Win", "WCX1_1")
  WCX1L2 := IniRead("1.ini", "Win", "WCX1L2")
  WCX1R2 := IniRead("1.ini", "Win", "WCX1R2")
  WCX1M2 := IniRead("1.ini", "Win", "WCX1M2")
  WCX1X2 := IniRead("1.ini", "Win", "WCX1X2")
  WCX1_2 := IniRead("1.ini", "Win", "WCX1_2")
  WCX1L3 := IniRead("1.ini", "Win", "WCX1L3")
  WCX1R3 := IniRead("1.ini", "Win", "WCX1R3")
  WCX1M3 := IniRead("1.ini", "Win", "WCX1M3")
  WCX1X3 := IniRead("1.ini", "Win", "WCX1X3")
  WCX1_3 := IniRead("1.ini", "Win", "WCX1_3")
  WRX2U1 := IniRead("1.ini", "Win", "WRX2U1")
  WRX2D1 := IniRead("1.ini", "Win", "WRX2D1")
  WRX2U2 := IniRead("1.ini", "Win", "WRX2U2")
  WRX2D2 := IniRead("1.ini", "Win", "WRX2D2")
  WRX2U3 := IniRead("1.ini", "Win", "WRX2U3")
  WRX2D3 := IniRead("1.ini", "Win", "WRX2D3")
  WRX1U1 := IniRead("1.ini", "Win", "WRX1U1")
  WRX1D1 := IniRead("1.ini", "Win", "WRX1D1")
  WRX1U2 := IniRead("1.ini", "Win", "WRX1U2")
  WRX1D2 := IniRead("1.ini", "Win", "WRX1D2")
  WRX1U3 := IniRead("1.ini", "Win", "WRX1U3")
  WRX1D3 := IniRead("1.ini", "Win", "WRX1D3")

  K1MX2L1 := IniRead("1.ini", "MKey", "K1MX2L1")
  K1MX2R1 := IniRead("1.ini", "MKey", "K1MX2R1")
  K1MX2M1 := IniRead("1.ini", "MKey", "K1MX2M1")
  K1MX2L2 := IniRead("1.ini", "MKey", "K1MX2L2")
  K1MX2R2 := IniRead("1.ini", "MKey", "K1MX2R2")
  K1MX2M2 := IniRead("1.ini", "MKey", "K1MX2M2")
  K1MX2L3 := IniRead("1.ini", "MKey", "K1MX2L3")
  K1MX2R3 := IniRead("1.ini", "MKey", "K1MX2R3")
  K1MX2M3 := IniRead("1.ini", "MKey", "K1MX2M3")
  K1MX1L1 := IniRead("1.ini", "MKey", "K1MX1L1")
  K1MX1R1 := IniRead("1.ini", "MKey", "K1MX1R1")
  K1MX1M1 := IniRead("1.ini", "MKey", "K1MX1M1")
  K1MX1L2 := IniRead("1.ini", "MKey", "K1MX1L2")
  K1MX1R2 := IniRead("1.ini", "MKey", "K1MX1R2")
  K1MX1M2 := IniRead("1.ini", "MKey", "K1MX1M2")
  K1MX1L3 := IniRead("1.ini", "MKey", "K1MX1L3")
  K1MX1R3 := IniRead("1.ini", "MKey", "K1MX1R3")
  K1MX1M3 := IniRead("1.ini", "MKey", "K1MX1M3")
  K2MX2L1 := IniRead("1.ini", "MKey", "K2MX2L1")
  K2MX2R1 := IniRead("1.ini", "MKey", "K2MX2R1")
  K2MX2M1 := IniRead("1.ini", "MKey", "K2MX2M1")
  K2MX2L2 := IniRead("1.ini", "MKey", "K2MX2L2")
  K2MX2R2 := IniRead("1.ini", "MKey", "K2MX2R2")
  K2MX2M2 := IniRead("1.ini", "MKey", "K2MX2M2")
  K2MX2L3 := IniRead("1.ini", "MKey", "K2MX2L3")
  K2MX2R3 := IniRead("1.ini", "MKey", "K2MX2R3")
  K2MX2M3 := IniRead("1.ini", "MKey", "K2MX2M3")
  K2MX1L1 := IniRead("1.ini", "MKey", "K2MX1L1")
  K2MX1R1 := IniRead("1.ini", "MKey", "K2MX1R1")
  K2MX1M1 := IniRead("1.ini", "MKey", "K2MX1M1")
  K2MX1L2 := IniRead("1.ini", "MKey", "K2MX1L2")
  K2MX1R2 := IniRead("1.ini", "MKey", "K2MX1R2")
  K2MX1M2 := IniRead("1.ini", "MKey", "K2MX1M2")
  K2MX1L3 := IniRead("1.ini", "MKey", "K2MX1L3")
  K2MX1R3 := IniRead("1.ini", "MKey", "K2MX1R3")
  K2MX1M3 := IniRead("1.ini", "MKey", "K2MX1M3")
  K3MX2L1 := IniRead("1.ini", "MKey", "K3MX2L1")
  K3MX2R1 := IniRead("1.ini", "MKey", "K3MX2R1")
  K3MX2M1 := IniRead("1.ini", "MKey", "K3MX2M1")
  K3MX2L2 := IniRead("1.ini", "MKey", "K3MX2L2")
  K3MX2R2 := IniRead("1.ini", "MKey", "K3MX2R2")
  K3MX2M2 := IniRead("1.ini", "MKey", "K3MX2M2")
  K3MX2L3 := IniRead("1.ini", "MKey", "K3MX2L3")
  K3MX2R3 := IniRead("1.ini", "MKey", "K3MX2R3")
  K3MX2M3 := IniRead("1.ini", "MKey", "K3MX2M3")
  K3MX1L1 := IniRead("1.ini", "MKey", "K3MX1L1")
  K3MX1R1 := IniRead("1.ini", "MKey", "K3MX1R1")
  K3MX1M1 := IniRead("1.ini", "MKey", "K3MX1M1")
  K3MX1L2 := IniRead("1.ini", "MKey", "K3MX1L2")
  K3MX1R2 := IniRead("1.ini", "MKey", "K3MX1R2")
  K3MX1M2 := IniRead("1.ini", "MKey", "K3MX1M2")
  K3MX1L3 := IniRead("1.ini", "MKey", "K3MX1L3")
  K3MX1R3 := IniRead("1.ini", "MKey", "K3MX1R3")
  K3MX1M3 := IniRead("1.ini", "MKey", "K3MX1M3")
  K4MX2L1 := IniRead("1.ini", "MKey", "K4MX2L1")
  K4MX2R1 := IniRead("1.ini", "MKey", "K4MX2R1")
  K4MX2M1 := IniRead("1.ini", "MKey", "K4MX2M1")
  K4MX2L2 := IniRead("1.ini", "MKey", "K4MX2L2")
  K4MX2R2 := IniRead("1.ini", "MKey", "K4MX2R2")
  K4MX2M2 := IniRead("1.ini", "MKey", "K4MX2M2")
  K4MX2L3 := IniRead("1.ini", "MKey", "K4MX2L3")
  K4MX2R3 := IniRead("1.ini", "MKey", "K4MX2R3")
  K4MX2M3 := IniRead("1.ini", "MKey", "K4MX2M3")
  K4MX1L1 := IniRead("1.ini", "MKey", "K4MX1L1")
  K4MX1R1 := IniRead("1.ini", "MKey", "K4MX1R1")
  K4MX1M1 := IniRead("1.ini", "MKey", "K4MX1M1")
  K4MX1L2 := IniRead("1.ini", "MKey", "K4MX1L2")
  K4MX1R2 := IniRead("1.ini", "MKey", "K4MX1R2")
  K4MX1M2 := IniRead("1.ini", "MKey", "K4MX1M2")
  K4MX1L3 := IniRead("1.ini", "MKey", "K4MX1L3")
  K4MX1R3 := IniRead("1.ini", "MKey", "K4MX1R3")
  K4MX1M3 := IniRead("1.ini", "MKey", "K4MX1M3")
  K5MX2L1 := IniRead("1.ini", "MKey", "K5MX2L1")
  K5MX2R1 := IniRead("1.ini", "MKey", "K5MX2R1")
  K5MX2M1 := IniRead("1.ini", "MKey", "K5MX2M1")
  K5MX2L2 := IniRead("1.ini", "MKey", "K5MX2L2")
  K5MX2R2 := IniRead("1.ini", "MKey", "K5MX2R2")
  K5MX2M2 := IniRead("1.ini", "MKey", "K5MX2M2")
  K5MX2L3 := IniRead("1.ini", "MKey", "K5MX2L3")
  K5MX2R3 := IniRead("1.ini", "MKey", "K5MX2R3")
  K5MX2M3 := IniRead("1.ini", "MKey", "K5MX2M3")
  K5MX1L1 := IniRead("1.ini", "MKey", "K5MX1L1")
  K5MX1R1 := IniRead("1.ini", "MKey", "K5MX1R1")
  K5MX1M1 := IniRead("1.ini", "MKey", "K5MX1M1")
  K5MX1L2 := IniRead("1.ini", "MKey", "K5MX1L2")
  K5MX1R2 := IniRead("1.ini", "MKey", "K5MX1R2")
  K5MX1M2 := IniRead("1.ini", "MKey", "K5MX1M2")
  K5MX1L3 := IniRead("1.ini", "MKey", "K5MX1L3")
  K5MX1R3 := IniRead("1.ini", "MKey", "K5MX1R3")
  K5MX1M3 := IniRead("1.ini", "MKey", "K5MX1M3")
  K6MX2L1 := IniRead("1.ini", "MKey", "K6MX2L1")
  K6MX2R1 := IniRead("1.ini", "MKey", "K6MX2R1")
  K6MX2M1 := IniRead("1.ini", "MKey", "K6MX2M1")
  K6MX2L2 := IniRead("1.ini", "MKey", "K6MX2L2")
  K6MX2R2 := IniRead("1.ini", "MKey", "K6MX2R2")
  K6MX2M2 := IniRead("1.ini", "MKey", "K6MX2M2")
  K6MX2L3 := IniRead("1.ini", "MKey", "K6MX2L3")
  K6MX2R3 := IniRead("1.ini", "MKey", "K6MX2R3")
  K6MX2M3 := IniRead("1.ini", "MKey", "K6MX2M3")
  K6MX1L1 := IniRead("1.ini", "MKey", "K6MX1L1")
  K6MX1R1 := IniRead("1.ini", "MKey", "K6MX1R1")
  K6MX1M1 := IniRead("1.ini", "MKey", "K6MX1M1")
  K6MX1L2 := IniRead("1.ini", "MKey", "K6MX1L2")
  K6MX1R2 := IniRead("1.ini", "MKey", "K6MX1R2")
  K6MX1M2 := IniRead("1.ini", "MKey", "K6MX1M2")
  K6MX1L3 := IniRead("1.ini", "MKey", "K6MX1L3")
  K6MX1R3 := IniRead("1.ini", "MKey", "K6MX1R3")
  K6MX1M3 := IniRead("1.ini", "MKey", "K6MX1M3")
  K7MX2L1 := IniRead("1.ini", "MKey", "K7MX2L1")
  K7MX2R1 := IniRead("1.ini", "MKey", "K7MX2R1")
  K7MX2M1 := IniRead("1.ini", "MKey", "K7MX2M1")
  K7MX2L2 := IniRead("1.ini", "MKey", "K7MX2L2")
  K7MX2R2 := IniRead("1.ini", "MKey", "K7MX2R2")
  K7MX2M2 := IniRead("1.ini", "MKey", "K7MX2M2")
  K7MX2L3 := IniRead("1.ini", "MKey", "K7MX2L3")
  K7MX2R3 := IniRead("1.ini", "MKey", "K7MX2R3")
  K7MX2M3 := IniRead("1.ini", "MKey", "K7MX2M3")
  K7MX1L1 := IniRead("1.ini", "MKey", "K7MX1L1")
  K7MX1R1 := IniRead("1.ini", "MKey", "K7MX1R1")
  K7MX1M1 := IniRead("1.ini", "MKey", "K7MX1M1")
  K7MX1L2 := IniRead("1.ini", "MKey", "K7MX1L2")
  K7MX1R2 := IniRead("1.ini", "MKey", "K7MX1R2")
  K7MX1M2 := IniRead("1.ini", "MKey", "K7MX1M2")
  K7MX1L3 := IniRead("1.ini", "MKey", "K7MX1L3")
  K7MX1R3 := IniRead("1.ini", "MKey", "K7MX1R3")
  K7MX1M3 := IniRead("1.ini", "MKey", "K7MX1M3")
  K8MX2L1 := IniRead("1.ini", "MKey", "K8MX2L1")
  K8MX2R1 := IniRead("1.ini", "MKey", "K8MX2R1")
  K8MX2M1 := IniRead("1.ini", "MKey", "K8MX2M1")
  K8MX2L2 := IniRead("1.ini", "MKey", "K8MX2L2")
  K8MX2R2 := IniRead("1.ini", "MKey", "K8MX2R2")
  K8MX2M2 := IniRead("1.ini", "MKey", "K8MX2M2")
  K8MX2L3 := IniRead("1.ini", "MKey", "K8MX2L3")
  K8MX2R3 := IniRead("1.ini", "MKey", "K8MX2R3")
  K8MX2M3 := IniRead("1.ini", "MKey", "K8MX2M3")
  K8MX1L1 := IniRead("1.ini", "MKey", "K8MX1L1")
  K8MX1R1 := IniRead("1.ini", "MKey", "K8MX1R1")
  K8MX1M1 := IniRead("1.ini", "MKey", "K8MX1M1")
  K8MX1L2 := IniRead("1.ini", "MKey", "K8MX1L2")
  K8MX1R2 := IniRead("1.ini", "MKey", "K8MX1R2")
  K8MX1M2 := IniRead("1.ini", "MKey", "K8MX1M2")
  K8MX1L3 := IniRead("1.ini", "MKey", "K8MX1L3")
  K8MX1R3 := IniRead("1.ini", "MKey", "K8MX1R3")
  K8MX1M3 := IniRead("1.ini", "MKey", "K8MX1M3")
}

;映射区-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

+WheelUp::WheelLeft

+WheelDown::WheelRight

;X2----------------------------------------------------------------------------------------------------------------------

XButton2 & LButton::
{
  if (Mode = 1)
    X2L1
  if (Mode = 2)
    X2L2
  if (Mode = 3)
    X2L3
}

XButton2 & RButton::
{
  if (Mode = 1)
    X2R1
  if (Mode = 2)
    X2R2
  if (Mode = 3)
    X2R3
}

XButton2 & MButton::
{
  if (Mode = 1)
    X2M1
  if (Mode = 2)
    X2M2
  if (Mode = 3)
    X2M3
}

XButton2 & WheelDown::
{
  if (Mode = 1)
    X2D1
  if (Mode = 2)
    X2D2
  if (Mode = 3)
    X2D3
}

XButton2 & WheelUp::
{
  if (Mode = 1)
    X2U1
  if (Mode = 2)
    X2U2
  if (Mode = 3)
    X2U3
}

XButton2 & XButton1::
{
  if (Mode = 1)
    X2X1
  if (Mode = 2)
    X2X2
  if (Mode = 3)
    X2X3
}

XButton2::
{
  if (Mode = 1)
    X2_1
  if (Mode = 2)
    X2_2
  if (Mode = 3)
    X2_3
}

XButton2 & q::
{
  if (Mode = 1)
    X2Q_1
  if (Mode = 2)
    X2Q_2
  if (Mode = 3)
    X2Q_3
}

XButton2 & w::
{
  if (Mode = 1)
    X2W_1
  if (Mode = 2)
    X2W_2
  if (Mode = 3)
    X2W_3
}

XButton2 & e::
{
  if (Mode = 1)
    X2E_1
  if (Mode = 2)
    X2E_2
  if (Mode = 3)
    X2E_3
}

XButton2 & r::
{
  if (Mode = 1)
    X2R_1
  if (Mode = 2)
    X2R_2
  if (Mode = 3)
    X2R_3
}

XButton2 & t::
{
  if (Mode = 1)
    X2T_1
  if (Mode = 2)
    X2T_2
  if (Mode = 3)
    X2T_3
}

XButton2 & a::
{
  if (Mode = 1)
    X2A_1
  if (Mode = 2)
    X2A_2
  if (Mode = 3)
    X2A_3
}

XButton2 & y::
{
  if (Mode = 1)
    X2Y_1
  if (Mode = 2)
    X2Y_2
  if (Mode = 3)
    X2Y_3
}

XButton2 & s::
{
  if (Mode = 1)
    X2S_1
  if (Mode = 2)
    X2S_2
  if (Mode = 3)
    X2S_3
}

XButton2 & d::
{
  if (Mode = 1)
    X2D_1
  if (Mode = 2)
    X2D_2
  if (Mode = 3)
    X2D_3
}

XButton2 & f::
{
  if (Mode = 1)
    X2F_1
  if (Mode = 2)
    X2F_2
  if (Mode = 3)
    X2F_3
}

XButton2 & g::
{
  if (Mode = 1)
    X2G_1
  if (Mode = 2)
    X2G_2
  if (Mode = 3)
    X2G_3
}

XButton2 & h::
{
  if (Mode = 1)
    X2H_1
  if (Mode = 2)
    X2H_2
  if (Mode = 3)
    X2H_3
}

XButton2 & z::
{
  if (Mode = 1)
    X2Z_1
  if (Mode = 2)
    X2Z_2
  if (Mode = 3)
    X2Z_3
}

XButton2 & x::
{
  if (Mode = 1)
    X2X_1
  if (Mode = 2)
    X2X_2
  if (Mode = 3)
    X2X_3
}

XButton2 & c::
{
  if (Mode = 1)
    X2C_1
  if (Mode = 2)
    X2C_2
  if (Mode = 3)
    X2C_3
}

XButton2 & v::
{
  if (Mode = 1)
    X2V_1
  if (Mode = 2)
    X2V_2
  if (Mode = 3)
    X2V_3
}

XButton2 & b::
{
  if (Mode = 1)
    X2B_1
  if (Mode = 2)
    X2B_2
  if (Mode = 3)
    X2B_3
}

XButton2 & n::
{
  if (Mode = 1)
    X2N_1
  if (Mode = 2)
    X2N_2
  if (Mode = 3)
    X2N_3
}

XButton2 & Space::
{
  if (Mode = 1)
    X2SP1
  if (Mode = 2)
    X2SP2
  if (Mode = 3)
    X2SP3
}

XButton2 & `::
{
  if (Mode = 1)
    X2LU1
  if (Mode = 2)
    X2LU2
  if (Mode = 3)
    X2LU3
}

XButton2 & 1::
{
  if (Mode = 1)
    X211
  if (Mode = 2)
    X212
  if (Mode = 3)
    X213
}

XButton2 & 2::
{
  if (Mode = 1)
    X221
  if (Mode = 2)
    X222
  if (Mode = 3)
    X223
}

XButton2 & 3::
{
  if (Mode = 1)
    X231
  if (Mode = 2)
    X232
  if (Mode = 3)
    X233
}

XButton2 & 4::
{
  if (Mode = 1)
    X241
  if (Mode = 2)
    X242
  if (Mode = 3)
    X243
}

XButton2 & 5::
{
  if (Mode = 1)
    X251
  if (Mode = 2)
    X252
  if (Mode = 3)
    X253
}

XButton2 & Tab::
{
  if (Mode = 1)
    X2TA1
  if (Mode = 2)
    X2TA2
  if (Mode = 3)
    X2TA3
}

XButton2 & CapsLock::
{
  if (Mode = 1)
    X2CA1
  if (Mode = 2)
    X2CA2
  if (Mode = 3)
    X2CA3
}

XButton2 & Shift::
{
  if (Mode = 1)
    X2SH1
  if (Mode = 2)
    X2SH2
  if (Mode = 3)
    X2SH3
}

XButton2 & F5::
{
  if (Mode = 1)
    X2F51
  if (Mode = 2)
    X2F52
  if (Mode = 3)
    X2F53
}

;X1---------------------------------------------------------------------------------------------------------------------

XButton1 & LButton::
{
  if (Mode = 1)
    X1L1
  if (Mode = 2)
    X1L2
  if (Mode = 3)
    X1L3
}

XButton1 & RButton::
{
  if (Mode = 1)
    X1R1
  if (Mode = 2)
    X1R2
  if (Mode = 3)
    X1R3
}

XButton1 & MButton::
{
  if (Mode = 1)
    X1M1
  if (Mode = 2)
    X1M2
  if (Mode = 3)
    X1M3
}

XButton1 & WheelDown::
{
  if (Mode = 1)
    X1D1
  if (Mode = 2)
    X1D2
  if (Mode = 3)
    X1D3
}

XButton1 & WheelUp::
{
  if (Mode = 1)
    X1U1
  if (Mode = 2)
    X1U2
  if (Mode = 3)
    X1U3
}

XButton1 & XButton2::
{
  if (Mode = 1)
    X1X1
  if (Mode = 2)
    X1X2
  if (Mode = 3)
    X1X3
}

XButton1::
{
  if (Mode = 1)
    X1_1
  if (Mode = 2)
    X1_2
  if (Mode = 3)
    X1_3
}

XButton1 & q::
{
  if (Mode = 1)
    X1Q_1
  if (Mode = 2)
    X1Q_2
  if (Mode = 3)
    X1Q_3
}

XButton1 & w::
{
  if (Mode = 1)
    X1W_1
  if (Mode = 2)
    X1W_2
  if (Mode = 3)
    X1W_3
}

XButton1 & e::
{
  if (Mode = 1)
    X1E_1
  if (Mode = 2)
    X1E_2
  if (Mode = 3)
    X1E_3
}

XButton1 & r::
{
  if (Mode = 1)
    X1R_1
  if (Mode = 2)
    X1R_2
  if (Mode = 3)
    X1R_3
}

XButton1 & t::
{
  if (Mode = 1)
    X1T_1
  if (Mode = 2)
    X1T_2
  if (Mode = 3)
    X1T_3
}

XButton1 & a::
{
  if (Mode = 1)
    X1A_1
  if (Mode = 2)
    X1A_2
  if (Mode = 3)
    X1A_3
}

XButton1 & s::
{
  if (Mode = 1)
    X1S_1
  if (Mode = 2)
    X1S_2
  if (Mode = 3)
    X1S_3
}

XButton1 & d::
{
  if (Mode = 1)
    X1D_1
  if (Mode = 2)
    X1D_2
  if (Mode = 3)
    X1D_3
}

XButton1 & f::
{
  if (Mode = 1)
    X1F_1
  if (Mode = 2)
    X1F_2
  if (Mode = 3)
    X1F_3
}

XButton1 & g::
{
  if (Mode = 1)
    X1G_1
  if (Mode = 2)
    X1G_2
  if (Mode = 3)
    X1G_3
}

XButton1 & z::
{
  if (Mode = 1)
    X1Z_1
  if (Mode = 2)
    X1Z_2
  if (Mode = 3)
    X1Z_3
}

XButton1 & x::
{
  if (Mode = 1)
    X1X_1
  if (Mode = 2)
    X1X_2
  if (Mode = 3)
    X1X_3
}

XButton1 & c::
{
  if (Mode = 1)
    X1C_1
  if (Mode = 2)
    X1C_2
  if (Mode = 3)
    X1C_3
}

XButton1 & v::
{
  if (Mode = 1)
    X1V_1
  if (Mode = 2)
    X1V_2
  if (Mode = 3)
    X1V_3
}

XButton1 & b::
{
  if (Mode = 1)
    X1B_1
  if (Mode = 2)
    X1B_2
  if (Mode = 3)
    X1B_3
}

XButton1 & `::
{
  if (Mode = 1)
    X1LU1
  if (Mode = 2)
    X1LU2
  if (Mode = 3)
    X1LU3
}

XButton1 & 1::
{
  if (Mode = 1)
    X111
  if (Mode = 2)
    X112
  if (Mode = 3)
    X113
}

XButton1 & 2::
{
  if (Mode = 1)
    X121
  if (Mode = 2)
    X122
  if (Mode = 3)
    X123
}

XButton1 & 3::
{
  if (Mode = 1)
    X131
  if (Mode = 2)
    X132
  if (Mode = 3)
    X133
}

XButton1 & 4::
{
  if (Mode = 1)
    X141
  if (Mode = 2)
    X142
  if (Mode = 3)
    X143
}

XButton1 & 5::
{
  if (Mode = 1)
    X151
  if (Mode = 2)
    X152
  if (Mode = 3)
    X153
}

XButton1 & Tab::
{
  if (Mode = 1)
    X1TA1
  if (Mode = 2)
    X1TA2
  if (Mode = 3)
    X1TA3
}

XButton1 & CapsLock::
{
  if (Mode = 1)
    X1CA1
  if (Mode = 2)
    X1CA2
  if (Mode = 3)
    X1CA3
}

XButton1 & Shift::
{
  if (Mode = 1)
    X1SH1
  if (Mode = 2)
    X1SH2
  if (Mode = 3)
    X1SH3
}

;模式1------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;X2--------------------------------------------------------------------------------------------------------------

X2L1()
{
  Key := "LButton"
  MoveFun(MX2L1, CX2L1, KCX2L1, WCX2L1, K1MX2L1, K2MX2L1, K3MX2L1, K4MX2L1, K5MX2L1, K6MX2L1, K7MX2L1, K8MX2L1, Key)
}

X2R1()
{
  Key := "RButton"
  MoveFun(MX2R1, CX2R1, KCX2R1, WCX2R1, K1MX2R1, K2MX2R1, K3MX2R1, K4MX2R1, K5MX2R1, K6MX2R1, K7MX2R1, K8MX2R1, Key)
}

X2M1()
{
  Key := "MButton"
  MoveFun(MX2M1, CX2M1, KCX2M1, WCX2M1, K1MX2M1, K2MX2M1, K3MX2M1, K4MX2M1, K5MX2M1, K6MX2M1, K7MX2M1, K8MX2M1, Key)
}

X2D1()
{
  RollFun(RX2D1, KRX2D1, WRX2D1)
}

X2U1()
{
  RollFun(RX2U1, KRX2U1, WRX2U1)
}

X2X1()
{
  ClickFun(CX2X1, KCX2X1, WCX2X1)
}

X2_1()
{
  ClickFun(CX2_1, KCX2_1, WCX2_1)
}

X2Q_1()
{
  SendText "+"
}

X2W_1()
{
  SendInput "1"
}

X2E_1()
{
  SendInput "2"
}

X2R_1()
{
  SendInput "3"
}

X2T_1()
{
  SendInput "("
}

X2Y_1()
{
  SendInput ")"
}

X2A_1()
{
  SendInput "."
}

X2S_1()
{
  SendInput "4"
}

X2D_1()
{
  SendInput "5"
}

X2F_1()
{
  SendInput "6"
}

X2G_1()
{
  SendInput "["
}

X2H_1()
{
  SendInput "]"
}

X2Z_1()
{
  SendInput "-"
}

X2X_1()
{
  SendInput "7"
}

X2C_1()
{
  SendInput "8"
}

X2V_1()
{
  SendInput "9"
}

X2B_1()
{
  SendText "{"
}

X2N_1()
{
  SendText "}"
}

X2SP1()
{
  SendInput "0"
}

X2LU1()
{

}

X211()
{

}

X221()
{

}

X231()
{

}

X241()
{

}

X251()
{

}

X2TA1()
{
  SendInput "*"
}

X2CA1()
{
  SendInput "="
}

X2SH1()
{
  SendInput "/"
}

X2F51()
{
  MsgBox "Reload", , "T1"
  Reload
}

;X1--------------------------------------------------------------------------------------------------------------

X1L1()
{
  Key := "LButton"
  MoveFun(MX1L1, CX1L1, KCX1L1, WCX1L1, K1MX1L1, K2MX1L1, K3MX1L1, K4MX1L1, K5MX1L1, K6MX1L1, K7MX1L1, K8MX1L1, Key)
}

X1R1()
{
  Key := "RButton"
  MoveFun(MX1R1, CX1R1, KCX1R1, WCX1R1, K1MX1R1, K2MX1R1, K3MX1R1, K4MX1R1, K5MX1R1, K6MX1R1, K7MX1R1, K8MX1R1, Key)
}

X1M1()
{
  Key := "MButton"
  MoveFun(MX1M1, CX1M1, KCX1M1, WCX1M1, K1MX1M1, K2MX1M1, K3MX1M1, K4MX1M1, K5MX1M1, K6MX1M1, K7MX1M1, K8MX1M1, Key)
}

X1D1()
{
  RollFun(RX1D1, KRX1D1, WRX1D1)
}

X1U1()
{
  RollFun(RX1U1, KRX1U1, WRX1U1)
}

X1X1()
{
  ClickFun(CX1X1, KCX1X1, WCX1X1)
}

X1_1()
{
  ClickFun(CX1_1, KCX1_1, WCX1_1)
}

X1Q_1()
{

}

X1W_1()
{

}

X1E_1()
{

}

X1R_1()
{

}

X1T_1()
{

}

X1A_1()
{

}

X1S_1()
{

}

X1D_1()
{

}

X1F_1()
{

}

X1G_1()
{

}

X1Z_1()
{

}

X1X_1()
{

}

X1C_1()
{

}

X1V_1()
{

}

X1B_1()
{

}

X1LU1()
{

}

X111()
{

}

X121()
{

}

X131()
{

}

X141()
{

}

X151()
{

}

X1TA1()
{

}

X1CA1()
{

}

X1SH1()
{

}

;模式2------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;X2----------------------------------------------------------------------------------------------------------------

X2L2()
{
  Key := "LButton"
  MoveFun(MX2L2, CX2L2, KCX2L2, WCX2L2, K1MX2L2, K2MX2L2, K3MX2L2, K4MX2L2, K5MX2L2, K6MX2L2, K7MX2L2, K8MX2L2, Key)
}

X2R2()
{
  Key := "RButton"
  MoveFun(MX2R2, CX2R2, KCX2R2, WCX2R2, K1MX2R2, K2MX2R2, K3MX2R2, K4MX2R2, K5MX2R2, K6MX2R2, K7MX2R2, K8MX2R2, Key)
}

X2M2()
{
  Key := "MButton"
  MoveFun(MX2M2, CX2M2, KCX2M2, WCX2M2, K1MX2M2, K2MX2M2, K3MX2M2, K4MX2M2, K5MX2M2, K6MX2M2, K7MX2M2, K8MX2M2, Key)
}

X2D2()
{
  RollFun(RX2D2, KRX2D2, WRX2D2)
}

X2U2()
{
  RollFun(RX2U2, KRX2U2, WRX2U2)
}

X2X2()
{
  ClickFun(CX2X2, KCX2X2, WCX2X2)
}

X2_2()
{
  ClickFun(CX2_2, KCX2_2, WCX2_2)
}

X2Q_2()
{

}

X2W_2()
{

}

X2E_2()
{

}

X2R_2()
{

}

X2T_2()
{

}

X2Y_2()
{

}

X2A_2()
{

}

X2S_2()
{

}

X2D_2()
{

}

X2F_2()
{

}

X2G_2()
{

}

X2H_2()
{

}

X2Z_2()
{

}

X2X_2()
{

}

X2C_2()
{

}

X2V_2()
{

}

X2B_2()
{

}

X2N_2()
{

}

X2SP2()
{

}

X2LU2()
{

}

X212()
{

}

X222()
{

}

X232()
{

}

X242()
{

}

X252()
{

}

X2TA2()
{

}

X2CA2()
{

}

X2SH2()
{

}

X2F52()
{
  MsgBox "Reload", , "T1"
  Reload
}

;X1-----------------------------------------------------------------------------------------------------------------------

X1L2()
{
  Key := "LButton"
  MoveFun(MX1L2, CX1L2, KCX1L2, WCX1L2, K1MX1L2, K2MX1L2, K3MX1L2, K4MX1L2, K5MX1L2, K6MX1L2, K7MX1L2, K8MX1L2, Key)
}

X1R2()
{
  Key := "RButton"
  MoveFun(MX1R2, CX1R2, KCX1R2, WCX1R2, K1MX1R2, K2MX1R2, K3MX1R2, K4MX1R2, K5MX1R2, K6MX1R2, K7MX1R2, K8MX1R2, Key)
}

X1M2()
{
  Key := "MButton"
  MoveFun(MX1M2, CX1M2, KCX1M2, WCX1M2, K1MX1M2, K2MX1M2, K3MX1M2, K4MX1M2, K5MX1M2, K6MX1M2, K7MX1M2, K8MX1M2, Key)
}

X1D2()
{
  RollFun(RX1D2, KRX1D2, WRX1D2)
}

X1U2()
{
  RollFun(RX1U2, KRX1U2, WRX1U2)
}

X1X2()
{
  ClickFun(CX1X2, KCX1X2, WCX1X2)
}

X1_2()
{
  ClickFun(CX1_2, KCX1_2, WCX1_2)
}

X1Q_2()
{

}

X1W_2()
{

}

X1E_2()
{

}

X1R_2()
{

}

X1T_2()
{

}

X1A_2()
{

}

X1S_2()
{

}

X1D_2()
{

}

X1F_2()
{

}

X1G_2()
{

}

X1Z_2()
{

}

X1X_2()
{

}

X1C_2()
{

}

X1V_2()
{

}

X1B_2()
{

}

X1LU2()
{

}

X112()
{

}

X122()
{

}

X132()
{

}

X142()
{

}

X152()
{

}

X1TA2()
{

}

X1CA2()
{

}

X1SH2()
{

}

;模式3------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;X2--------------------------------------------------------------------------------------------------------------------------

X2L3()
{
  Key := "LButton"
  MoveFun(MX2L3, CX2L3, KCX2L3, WCX2L3, K1MX2L3, K2MX2L3, K3MX2L3, K4MX2L3, K5MX2L3, K6MX2L3, K7MX2L3, K8MX2L3, Key)
}

X2R3()
{
  Key := "RButton"
  MoveFun(MX2R3, CX2R3, KCX2R3, WCX2R3, K1MX2R3, K2MX2R3, K3MX2R3, K4MX2R3, K5MX2R3, K6MX2R3, K7MX2R3, K8MX2R3, Key)
}

X2M3()
{
  Key := "MButton"
  MoveFun(MX2M3, CX2M3, KCX2M3, WCX2M3, K1MX2M3, K2MX2M3, K3MX2M3, K4MX2M3, K5MX2M3, K6MX2M3, K7MX2M3, K8MX2M3, Key)
}

X2D3()
{
  RollFun(RX2D3, KRX2D3, WRX2D3)
}

X2U3()
{
  RollFun(RX2U3, KRX2U3, WRX2U3)
}

X2X3()
{
  ClickFun(CX2X3, KCX2X3, WCX2X3)
}

X2_3()
{
  ClickFun(CX2_3, KCX2_3, WCX2_3)
}

X2Q_3()
{

}

X2W_3()
{

}

X2E_3()
{

}

X2R_3()
{

}

X2T_3()
{

}

X2Y_3()
{

}

X2A_3()
{

}

X2S_3()
{

}

X2D_3()
{

}

X2F_3()
{

}

X2G_3()
{

}

X2H_3()
{

}

X2Z_3()
{

}

X2X_3()
{

}

X2C_3()
{

}

X2V_3()
{

}

X2B_3()
{

}

X2N_3()
{

}

X2SP3()
{

}

X2LU3()
{

}

X213()
{

}

X223()
{

}

X233()
{

}

X243()
{

}

X253()
{

}

X2TA3()
{

}

X2CA3()
{

}

X2SH3()
{

}

X2F53()
{
  MsgBox "Reload", , "T1"
  Reload
}

;X1--------------------------------------------------------------------------------------------------------------------

X1L3()
{
  Key := "LButton"
  MoveFun(MX1L3, CX1L3, KCX1L3, WCX1L3, K1MX1L3, K2MX1L3, K3MX1L3, K4MX1L3, K5MX1L3, K6MX1L3, K7MX1L3, K8MX1L3, Key)
}

X1R3()
{
  Key := "RButton"
  MoveFun(MX1R3, CX1R3, KCX1R3, WCX1R3, K1MX1R3, K2MX1R3, K3MX1R3, K4MX1R3, K5MX1R3, K6MX1R3, K7MX1R3, K8MX1R3, Key)
}

X1M3()
{
  Key := "MButton"
  MoveFun(MX1M3, CX1M3, KCX1M3, WCX1M3, K1MX1M3, K2MX1M3, K3MX1M3, K4MX1M3, K5MX1M3, K6MX1M3, K7MX1M3, K8MX1M3, Key)
}

X1D3()
{
  RollFun(RX1D3, KRX1D3, WRX1D3)
}

X1U3()
{
  RollFun(RX1U3, KRX1U3, WRX1U3)
}

X1X3()
{
  ClickFun(CX1X3, KCX1X3, WCX1X3)
}

X1_3()
{
  ClickFun(CX1_3, KCX1_3, WCX1_3)
}

X1Q_3()
{

}

X1W_3()
{

}

X1E_3()
{

}

X1R_3()
{

}

X1T_3()
{

}

X1A_3()
{

}

X1S_3()
{

}

X1D_3()
{

}

X1F_3()
{

}

X1G_3()
{

}

X1Z_3()
{

}

X1X_3()
{

}

X1C_3()
{

}

X1V_3()
{

}

X1B_3()
{

}

X1LU3()
{

}

X113()
{

}

X123()
{

}

X133()
{

}

X143()
{

}

X153()
{

}

X1TA3()
{

}

X1CA3()
{

}

X1SH3()
{

}

;点击函数------------------------------------------------------------------------------------------------------------------------------------------------------

ClickFun(b, c, d)
{
  if (b = 1)
  {
    ClickFun1
  }
  else if (b = 2)
  {
    ClickFun2(c, d)
  }
  else if (b = 3)
  {
    ClickFun3
  }
  else if (b = 4)
  {
    ClickFun4
  }
  else if (b = 5)
  {
    ClickFun5
  }
  else if (b = 6)
  {
    ClickFun6
  }
  else if (b = 7)
  {
    ClickFun7
  }
  else if (b = 8)
  {
    ClickFun8
  }
  else if (b = 9)
  {
    ClickFun9
  }
  else if (b = 10)
  {
    ClickFun10
  }
  else if (b = 11)
  {
    ClickFun11
  }
  else if (b = 12)
  {
    ClickFun12
  }
  else if (b = 13)
  {
    ClickFun13
  }
  else if (b = 14)
  {
    ClickFun14
  }
  else if (b = 15)
  {
    ClickFun15
  }
  else if (b = 16)
  {
    ClickFun16
  }
  else if (b = 17)
  {
    ClickFun17
  }
  else if (b = 18)
  {
    ClickFun18
  }
  else if (b = 19)
  {
    ClickFun19
  }
}

ClickFun1()
{

}

ClickFun2(c, d)
{
  if d
  {
    MouseGetPos , , &EWD_MouseWin
    WinActivate EWD_MouseWin
  }
  SendInput c
}

ClickFun3()
{
  SendInput "!{Left}"
}

ClickFun4()
{
  SendInput "!{Right}"
}

ClickFun5()
{
  SendInput "^z"
}

ClickFun6()
{
  SendInput "^y"
}

ClickFun7()
{
  SendInput "^a"
}

ClickFun8()
{
  global Clip, Clip1, Clip2, Clip_2, Clip3, Clip_3, Clip4, Clip_4
  Clip1 := ClipboardAll()
  A_Clipboard := ""
  SendInput "^c"
  ClipWait
  if (Clip = 1)
  { }
  if (Clip = 2)
  {
    Clip2 := ClipboardAll()
    Clip_2 := A_Clipboard
    A_Clipboard := Clip1
  }
  if (Clip = 3)
  {
    Clip3 := ClipboardAll()
    Clip_3 := A_Clipboard
    A_Clipboard := Clip1
  }
  if (Clip = 4)
  {
    Clip4 := ClipboardAll()
    Clip_4 := A_Clipboard
    A_Clipboard := Clip1
  }
}

ClickFun9()
{
  global Clip, Clip1, Clip2, Clip3, Clip4
  Clip1 := ClipboardAll()
  if (Clip = 1)
  { }
  if (Clip = 2)
  {
    A_Clipboard := Clip2
  }
  if (Clip = 3)
  {
    A_Clipboard := Clip3
  }
  if (Clip = 4)
  {
    A_Clipboard := Clip4
  }
  SendInput "^v"
  ;点击
  sleep 200
  A_Clipboard := Clip1
  ;点击
}

ClickFun10()
{
  global Clip, CLip1, Clip2, Clip3, Clip4, Clip_2, Clip_3, Clip_4
  Clip1 := ClipboardAll()
  A_Clipboard := ""
  SendInput "^x"
  ClipWait
  if (Clip = 1)
  { }
  if (Clip = 2)
  {
    Clip2 := ClipboardAll()
    Clip_2 := A_Clipboard
    A_Clipboard := Clip1
  }
  if (Clip = 3)
  {
    Clip3 := ClipboardAll()
    Clip_3 := A_Clipboard
    A_Clipboard := Clip1
  }
  if (Clip = 4)
  {
    Clip4 := ClipboardAll()
    Clip_4 := A_Clipboard
    A_Clipboard := Clip1
  }
  ;点击
}

ClickFun11()
{
  global
  Clip += 1
  if (Clip = 5)
  {
    Clip := 1
  }
  ToolTip "Clip" Clip
  Sleep 500
  ToolTip
}

ClickFun12()
{
  global
  Clip -= 1
  if (Clip = 0)
  {
    Clip := 4
  }
  ToolTip "Clip" Clip
  Sleep 500
  ToolTip
}

ClickFun13()
{
  global
  if (Clip = 1)
  {
    ToolTip "Clip1:`n" A_Clipboard
    Sleep 1000
    ToolTip
  }
  if (Clip = 2)
  {
    ToolTip "Clip2:`n" Clip_2
    Sleep 1000
    ToolTip
  }
  if (Clip = 3)
  {
    ToolTip "Clip3:`n" Clip_3
    Sleep 1000
    ToolTip
  }
  if (Clip = 4)
  {
    ToolTip "Clip4:`n" Clip_4
    Sleep 1000
    ToolTip
  }
}

ClickFun14()
{
  Clipo := ClipboardAll()
  A_Clipboard := A_Clipboard
  SendInput "^v"
  Sleep 400
  A_Clipboard := Clipo
}

ClickFun15()
{
  Clipo := ClipboardAll()
  A_Clipboard := ""
  SendInput "^x"
  ClipWait
  A_Clipboard := A_Clipboard
  SendInput "^v"
  Sleep 400
  A_Clipboard := Clipo
}

ClickFun16()
{
  A_Clipboard := A_Clipboard
}

ClickFun17()
{
  MouseGetPos , , &Win1
  WinActivate Win1
  SendInput "!{F4}"
}

ClickFun18()
{
  global Mode
  Mode += 1
  if (Mode = 4)
  {
    Mode := 1
  }
  ToolTip "Mode" Mode
  Sleep 500
  ToolTip
  IniWrite Mode, "1.ini", "Mode", "Mode"
}

ClickFun19()
{
  global Mode
  Mode -= 1
  if (Mode = 0)
  {
    Mode := 3
  }
  ToolTip "Mode" Mode
  Sleep 500
  ToolTip
  IniWrite Mode, "1.ini", "Mode", "Mode"
}

;滚轮函数------------------------------------------------------------------------------------------------------------------------------------------------------

RollFun(b, c, d)
{
  if (b = 1)
  {
    RollFun1
  }
  else if (b = 2)
  {
    RollFun2(c, d)
  }
  else if (b = 3)
  {
    RollFun3
  }
  else if (b = 4)
  {
    RollFun4
  }
  else if (b = 5)
  {
    RollFun5
  }
  else if (b = 6)
  {
    RollFun6
  }
  else if (b = 7)
  {
    RollFun7
  }
  else if (b = 8)
  {
    RollFun8
  }
  else if (b = 9)
  {
    RollFun9
  }
  else if (b = 10)
  {
    RollFun10
  }
  else if (b = 11)
  {
    RollFun11
  }
  else if (b = 12)
  {
    RollFun12
  }
  else if (b = 13)
  {
    RollFun13
  }
  else if (b = 14)
  {
    RollFun14
  }
  else if (b = 15)
  {
    RollFun15
  }
  else if (b = 16)
  {
    RollFun16
  }
}

RollFun1()
{

}

RollFun2(c, d)
{
  if d
  {
    MouseGetPos , , &EWD_MouseWin
    WinActivate EWD_MouseWin
  }
  SendInput c
}

RollFun3()
{
  SendInput "{WheelUp 5}"
}

RollFun4()
{
  SendInput "{WheelDown 5}"
}

RollFun5()
{
  SendInput "{WheelLeft}"
}

RollFun6()
{
  SendInput "{WheelRight}"
}

RollFun7()
{
  SendInput "^{WheelUp}"
}

RollFun8()
{
  SendInput "^{WheelDown}"
}

RollFun9()
{
  SendInput "!{Left}"
}

RollFun10()
{
  SendInput "!{Right}"
}

RollFun11()
{
  SendInput "^z"
}

RollFun12()
{
  SendInput "^y"
}

RollFun13()
{
  global
  Clip += 1
  if (Clip = 5)
  {
    Clip := 1
  }
  ToolTip "Clip" Clip
  Sleep 500
  ToolTip
}

RollFun14()
{
  global
  Clip -= 1
  if (Clip = 0)
  {
    Clip := 4
  }
  ToolTip "Clip" Clip
  Sleep 500
  ToolTip
}

RollFun15()
{
  global Mode
  Mode += 1
  if (Mode = 4)
  {
    Mode := 1
  }
  ToolTip "Mode" Mode
  Sleep 500
  ToolTip
  IniWrite Mode, "1.ini", "Mode", "Mode"
}

RollFun16()
{
  global Mode
  Mode -= 1
  if (Mode = 0)
  {
    Mode := 3
  }
  ToolTip "Mode" Mode
  Sleep 500
  ToolTip
  IniWrite Mode, "1.ini", "Mode", "Mode"
}

;移动函数------------------------------------------------------------------------------------------------------------------------------------------------------

MoveFun(a, b, c, d, e, f, g, h, i, j, m, n, k)
{
  if (a = 1)
  {
    MoveFun1(a, b, c, d, k)
  }
  else if (a = 2)
  {
    MoveFun2(a, b, c, d, e, f, g, h, k)
  }
  else if (a = 3)
  {
    MoveFun3(a, b, c, d, i, j, m, n, k)
  }
  else if (a = 4)
  {
    MoveFun4(a, b, c, d, k)
  }
  else if (a = 5)
  {
    MoveFun5(a, b, c, d, k)
  }
  else if (a = 6)
  {
    MoveFun6(a, b, c, d, k)
  }
  else if (a = 7)
  {
    MoveFun7(a, b, c, d, k)
  }
  else if (a = 8)
  {
    MoveFun8(a, b, c, d, k)
  }
  else if (a = 9)
  {
    MoveFun9(a, b, c, d, k)
  }
  else if (a = 10)
  {
    MoveFun10(a, b, c, d, k)
  }
}

MoveFun1(a, b, c, d, k)
{

}

MoveFun2(a, b, c, d, e, f, g, h, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &sx, &sy, &EWD_MouseWin
  WinActivate EWD_MouseWin
  SetTimer Check, 10
  Check()
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &EndX, &EndY
    MoveX := Abs(EndX - sx)
    MoveY := Abs(EndY - sy)
    If (MoveY <= 25 && MoveX <= 25)
    {
      if !GetKeyState(k, "P")
      {
        SetTimer Check, 0
        Clickfun(b, c, d)
      }
    }
    else if (MoveY > 25 && MoveY > MoveX)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx1, &sy1
      SetTimer YFun, 10
      Yfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex1, &ey1
        mx1 := ex1 - sx1
        my1 := ey1 - sy1
        amx1 := Abs(mx1)
        amy1 := Abs(my1)
        if (amx1 < 25)
        {
          if (my1 < -25)
          {
            SendInput e
            ;上移
            sx1 := ex1
            sy1 := ey1
          }
          if (my1 > 25)
          {
            SendInput f
            ;下移
            sx1 := ex1
            sy1 := ey1
          }
        }
        else
        {
          SetTimer YFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer XFun, 10
        }
      }
    }
    else if (MoveX > 25 && MoveX > MoveY)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx2, &sy2
      SetTimer XFun, 10
      Xfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex2, &ey2
        mx2 := ex2 - sx2
        my2 := ey2 - sy2
        amx2 := Abs(mx2)
        amy2 := Abs(my2)
        if (amy2 < 25)
        {
          if (mx2 < -25)
          {
            SendInput g
            ;左移
            sx2 := ex2
            sy2 := ey2
          }
          if (mx2 > 25)
          {
            SendInput h
            ;右移
            sx2 := ex2
            sy2 := ey2
          }
        }
        else
        {
          SetTimer XFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer YFun, 10
        }
      }
    }
  }
}

MoveFun3(a, b, c, d, i, j, m, n, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &StartX, &StartY, &MouseWin
  Keywait k
  WinActivate MouseWin
  MouseGetPos &EndX, &EndY
  MoveX := EndX - StartX
  MoveY := EndY - StartY
  AMoveX := Abs(MoveX)
  AMoveY := Abs(MoveY)
  If (AMoveY <= 25 && AMoveX <= 25)
  {
    Clickfun(b, c, d)
    ;点击
  }
  If (AMoveY > 25 && AMoveY > AMoveX)
  {
    if (MoveY < 0)
    {
      SendInput i
    }
    if (MoveY > 0)
    {
      SendInput j
    }
  }
  If (AMoveX > 25 && AMoveX > AMoveY)
  {
    if (MoveX < 0)
    {
      SendInput m
    }
    if (MoveX > 0)
    {
      SendInput n
    }
  }
}

MoveFun4(a, b, c, d, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &sx, &sy, &EWD_MouseWin
  WinActivate EWD_MouseWin
  SetTimer Check, 10
  Check()
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &EndX, &EndY
    MoveX := Abs(EndX - sx)
    MoveY := Abs(EndY - sy)
    If (MoveY <= 25 && MoveX <= 25)
    {
      if !GetKeyState(k, "P")
      {
        SetTimer Check, 0
        Clickfun(b, c, d)
        ;点击
      }
    }
    else
    {
      SetTimer Check, 0
      flag := 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &EWD_MouseStartX, &EWD_MouseStartY
      WinGetPos &EWD_OriginalPosX, &EWD_OriginalPosY, , , EWD_MouseWin
      if WinGetMinMax(EWD_MouseWin)  ; Only if the window isn't maximized
      {
        WinRestore EWD_MouseWin
      }
      SetTimer EWD_WatchMouse, 10  ; Track the mouse as the user drags it.
      EWD_WatchMouse()
      {
        if !GetKeyState(k, "P")  ; Button has been released, so drag is complete.
        {
          SetTimer EWD_WatchMouse, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &EWD_MouseX, &EWD_MouseY
        WinGetPos &EWD_WinX, &EWD_WinY, , , EWD_MouseWin
        SetWinDelay -1   ; Makes the below move faster/smoother.
        WinMove EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY, , , EWD_MouseWin
        EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.R
        EWD_MouseStartY := EWD_MouseY
      }
    }
  }
}

MoveFun5(a, b, c, d, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &StartX, &StartY, &MouseWin
  Keywait k
  WinActivate MouseWin
  MouseGetPos &EndX, &EndY
  MoveX := EndX - StartX
  MoveY := EndY - StartY
  AMoveX := Abs(MoveX)
  AMoveY := Abs(MoveY)
  If (AMoveY <= 25 && AMoveX <= 25)
  {
    Clickfun(b, c, d)
    ;点击
  }
  If (AMoveY > 25 && AMoveY > AMoveX)
  {
    if (MoveY < 0)
    {
      WinMaximize MouseWin
    }
    if (MoveY > 0)
    {
      WinMinimize MouseWin
    }
  }
  If (AMoveX > 25 && AMoveX > AMoveY)
  {
    if (MoveX < 0)
    {
      SendInput "#{Left}"
    }
    if (MoveX > 0)
    {
      SendInput "#{Right}"
    }
  }
}

MoveFun6(a, b, c, d, k)
{
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &sx, &sy, &EWD_MouseWin
    WinActivate EWD_MouseWin
    SetTimer Check, 10
    Check()
    {
      CoordMode "Mouse", "Screen"
      MouseGetPos &EndX, &EndY
      MoveX := Abs(EndX - sx)
      MoveY := Abs(EndY - sy)
      If (MoveY <= 25 && MoveX <= 25)
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Check, 0
          ; SendInput "^#z"
          Clickfun(b, c, d)
          ;点击
        }
      }
      else
      {
        SetTimer Check, 0
        CoordMode "Mouse", "Screen"
        WinGetPos &x1, &y1, &w, &h, EWD_MouseWin
        if WinGetMinMax(EWD_MouseWin)
        {
          WinRestore EWD_MouseWin
          SetWinDelay -1
          WinMove x1, y1, w, h, EWD_MouseWin
        }
        SetTimer EWD_WatchMouse, 10
        EWD_WatchMouse()
        {
          if !GetKeyState(k, "P")  ; Button has been released, so drag is complete.
          {
            SetTimer EWD_WatchMouse, 0
          }
          CoordMode "Mouse", "Screen"
          MouseGetPos &ex, &ey
          WinGetPos , , &Width, &Height, EWD_MouseWin
          SetWinDelay -1
          WinMove , , Width + ex - sx, Height + ey - sy, EWD_MouseWin
          sx := ex
          sy := ey
        }
      }
    }
  }
}

MoveFun7(a, b, c, d, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &sx, &sy, &EWD_MouseWin
  WinActivate EWD_MouseWin
  SetTimer Check, 10
  Check()
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &EndX, &EndY
    MoveX := Abs(EndX - sx)
    MoveY := Abs(EndY - sy)
    If (MoveY <= 25 && MoveX <= 25)
    {
      if !GetKeyState(k, "P")
      {
        SetTimer Check, 0
        Clickfun(b, c, d)
      }
    }
    else if (MoveY > 25 && MoveY > MoveX)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx1, &sy1
      SetTimer YFun, 10
      Yfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex1, &ey1
        mx1 := ex1 - sx1
        my1 := ey1 - sy1
        amx1 := Abs(mx1)
        amy1 := Abs(my1)
        if (amx1 < 25)
        {
          if (my1 < -25)
          {
            SendInput "{Up}"
            ;上移
            sx1 := ex1
            sy1 := ey1
          }
          if (my1 > 25)
          {
            SendInput "{Down}"
            ;下移
            sx1 := ex1
            sy1 := ey1
          }
        }
        else
        {
          SetTimer YFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer XFun, 10
        }
      }
    }
    else if (MoveX > 25 && MoveX > MoveY)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx2, &sy2
      SetTimer XFun, 10
      Xfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex2, &ey2
        mx2 := ex2 - sx2
        my2 := ey2 - sy2
        amx2 := Abs(mx2)
        amy2 := Abs(my2)
        if (amy2 < 25)
        {
          if (mx2 < -25)
          {
            SendInput "{Left}"
            ;左移
            sx2 := ex2
            sy2 := ey2
          }
          if (mx2 > 25)
          {
            SendInput "{Right}"
            ;右移
            sx2 := ex2
            sy2 := ey2
          }
        }
        else
        {
          SetTimer XFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer YFun, 10
        }
      }
    }
  }
}

MoveFun8(a, b, c, d, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &sx, &sy, &EWD_MouseWin
  WinActivate EWD_MouseWin
  SetTimer Check, 10
  Check()
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &EndX, &EndY
    MoveX := Abs(EndX - sx)
    MoveY := Abs(EndY - sy)
    If (MoveY <= 25 && MoveX <= 25)
    {
      if !GetKeyState(k, "P")
      {
        SetTimer Check, 0
        global Clip, Clip2, Clip3, Clip4, Clip_2, Clip_3, Clip_4
        Clickfun(b, c, d)
        ;点击
      }
    }
    else if (MoveY > 25 && MoveY > MoveX && EndY - sy > 0)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx1, &sy1
      SetTimer Yfun1, 10
      Yfun1()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun1, 0
          SetTimer Xfun1, 0
          SetTimer Yfun2, 0
          SetTimer Xfun2, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex1, &ey1
        mx1 := ex1 - sx1
        my1 := ey1 - sy1
        amx1 := Abs(mx1)
        amy1 := Abs(my1)
        if (amx1 < 25)
        {
          if (my1 < -25)
          {
            ; SendInput "{Home}{Enter}{Up}"
            SendInput "^z"
            ;上移
            sx1 := ex1
            sy1 := ey1
          }
          if (my1 > 25)
          {
            SendInput "{Enter}"
            ;下移
            sx1 := ex1
            sy1 := ey1
          }
        }
        else if (mx1 > 0)
        {
          SetTimer Yfun1, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer Xfun1, 10
        }
        else if (mx1 < 0)
        {
          SetTimer Yfun1, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer Xfun2, 10
        }
      }
    }
    else if (MoveY > 25 && MoveY > MoveX && EndY - sy < 0)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx1, &sy1
      SetTimer Yfun2, 10
      Yfun2()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun1, 0
          SetTimer Xfun1, 0
          SetTimer Yfun2, 0
          SetTimer Xfun2, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex1, &ey1
        mx1 := ex1 - sx1
        my1 := ey1 - sy1
        amx1 := Abs(mx1)
        amy1 := Abs(my1)
        if (amx1 < 25)
        {
          if (my1 < -25)
          {
            ; SendInput "{Home}{Enter}{Up}"
            SendInput "{Space}"
            ;上移
            sx1 := ex1
            sy1 := ey1
          }
          if (my1 > 25)
          {
            SendInput "^z"
            ;下移
            sx1 := ex1
            sy1 := ey1
          }
        }
        else if (mx1 > 0)
        {
          SetTimer Yfun2, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer Xfun1, 10
        }
        else if (mx1 < 0)
        {
          SetTimer Yfun2, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer Xfun2, 10
        }
      }
    }
    else if (MoveX > 25 && MoveX > MoveY && EndX - sx > 0)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx2, &sy2
      SetTimer Xfun1, 10
      Xfun1()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun1, 0
          SetTimer Xfun1, 0
          SetTimer Yfun2, 0
          SetTimer Xfun2, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex2, &ey2
        mx2 := ex2 - sx2
        my2 := ey2 - sy2
        amx2 := Abs(mx2)
        amy2 := Abs(my2)
        if (amy2 < 25)
        {
          if (mx2 < -25)
          {
            SendInput "^z"
            ;左移
            sx2 := ex2
            sy2 := ey2
          }
          if (mx2 > 25)
          {
            SendInput "{Del}"
            ;右移
            sx2 := ex2
            sy2 := ey2
          }
        }
        else if (my2 > 0)
        {
          SetTimer Xfun1, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer Yfun1, 10
        }
        else if (my2 < 0)
        {
          SetTimer Xfun1, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer Yfun2, 10
        }
      }
    }
    else if (MoveX > 25 && MoveX > MoveY && EndX - sx < 0)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx2, &sy2
      SetTimer Xfun2, 10
      Xfun2()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun1, 0
          SetTimer Xfun1, 0
          SetTimer Yfun2, 0
          SetTimer Xfun2, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex2, &ey2
        mx2 := ex2 - sx2
        my2 := ey2 - sy2
        amx2 := Abs(mx2)
        amy2 := Abs(my2)
        if (amy2 < 25)
        {
          if (mx2 < -25)
          {
            SendInput "{BackSpace}"
            ;左移
            sx2 := ex2
            sy2 := ey2
          }
          if (mx2 > 25)
          {
            SendInput "^z"
            ;右移
            sx2 := ex2
            sy2 := ey2
          }
        }
        else if (my2 > 0)
        {
          SetTimer Xfun2, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer Yfun1, 10
        }
        else if (my2 < 0)
        {
          SetTimer Xfun2, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer Yfun2, 10
        }
      }
    }
  }
}

MoveFun9(a, b, c, d, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &sx, &sy, &EWD_MouseWin
  WinActivate EWD_MouseWin
  SetTimer Check, 10
  Check()
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &EndX, &EndY
    MoveX := Abs(EndX - sx)
    MoveY := Abs(EndY - sy)
    If (MoveY <= 25 && MoveX <= 25)
    {
      if !GetKeyState(k, "P")
      {
        SetTimer Check, 0
        Clickfun(b, c, d)
        ;点击
      }
    }
    else if (MoveY > 25 && MoveY > MoveX)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx1, &sy1
      SetTimer YFun, 10
      Yfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex1, &ey1
        mx1 := ex1 - sx1
        my1 := ey1 - sy1
        amx1 := Abs(mx1)
        amy1 := Abs(my1)
        if (amx1 < 25)
        {
          if (my1 < -25)
          {
            ; SendInput "{Shift Down}" "{Up}" "{Shift Up}"
            SendInput "+{Up}"
            ;上移
            sx1 := ex1
            sy1 := ey1
          }
          if (my1 > 25)
          {
            ; SendInput "{Shift Down}" "{Down}" "{Shift Up}"
            SendInput "+{Down}"
            ;下移
            sx1 := ex1
            sy1 := ey1
          }
        }
        else
        {
          SetTimer YFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer XFun, 10
        }
      }
    }
    else if (MoveX > 25 && MoveX > MoveY)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx2, &sy2
      SetTimer XFun, 10
      Xfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex2, &ey2
        mx2 := ex2 - sx2
        my2 := ey2 - sy2
        amx2 := Abs(mx2)
        amy2 := Abs(my2)
        if (amy2 < 25)
        {
          if (mx2 < -25)
          {
            ; SendInput "{Shift Down}" "{Left}" "{Shift Up}"
            SendInput "+{Left}"
            ;左移
            sx2 := ex2
            sy2 := ey2
          }
          if (mx2 > 25)
          {
            ; SendInput "{Shift Down}" "{Right}" "{Shift Up}"
            SendInput "+{Right}"
            ;右移
            sx2 := ex2
            sy2 := ey2
          }
        }
        else
        {
          SetTimer XFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer YFun, 10
        }
      }
    }
  }
}

MoveFun10(a, b, c, d, k)
{
  CoordMode "Mouse", "Screen"
  MouseGetPos &sx, &sy, &EWD_MouseWin
  WinActivate EWD_MouseWin
  SetTimer Check, 10
  Check()
  {
    CoordMode "Mouse", "Screen"
    MouseGetPos &EndX, &EndY
    MoveX := Abs(EndX - sx)
    MoveY := Abs(EndY - sy)
    If (MoveY <= 25 && MoveX <= 25)
    {
      if !GetKeyState(k, "P")
      {
        SetTimer Check, 0
        ; SendInput "^#z"
        Clickfun(b, c, d)
        ;点击
      }
    }
    else if (MoveY > 25 && MoveY > MoveX)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx1, &sy1
      SetTimer YFun, 10
      Yfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex1, &ey1
        mx1 := ex1 - sx1
        my1 := ey1 - sy1
        amx1 := Abs(mx1)
        amy1 := Abs(my1)
        if (amx1 < 25)
        {
          if (my1 < -25)
          {
            SendInput "^{WheelUp}"
            ;上移
            sx1 := ex1
            sy1 := ey1
          }
          if (my1 > 25)
          {
            SendInput "^{WheelDown}"
            ;下移
            sx1 := ex1
            sy1 := ey1
          }
        }
        else
        {
          SetTimer YFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx2, &sy2
          SetTimer XFun, 10
        }
      }
    }
    else if (MoveX > 25 && MoveX > MoveY)
    {
      SetTimer Check, 0
      CoordMode "Mouse", "Screen"
      MouseGetPos &sx2, &sy2
      SetTimer XFun, 10
      Xfun()
      {
        if !GetKeyState(k, "P")
        {
          SetTimer Yfun, 0
          SetTimer Xfun, 0
        }
        CoordMode "Mouse", "Screen"
        MouseGetPos &ex2, &ey2
        mx2 := ex2 - sx2
        my2 := ey2 - sy2
        amx2 := Abs(mx2)
        amy2 := Abs(my2)
        if (amy2 < 25)
        {
          if (mx2 < -25)
          {
            SendInput "{WheelLeft}"
            ;左移
            sx2 := ex2
            sy2 := ey2
          }
          if (mx2 > 25)
          {
            SendInput "{WheelRight}"
            ;右移
            sx2 := ex2
            sy2 := ey2
          }
        }
        else
        {
          SetTimer XFun, 0
          CoordMode "Mouse", "Screen"
          MouseGetPos &sx1, &sy1
          SetTimer YFun, 10
        }
      }
    }
  }
}