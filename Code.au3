#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <Misc.au3>
#include <GUIConstants.au3>
#include <GUIlistbox.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <GuiListView.au3>
#Region ### START Koda GUI section ### Form=@WorkingDir\form\login.kxf
$Login = GUICreate("Login", 332, 140, -1, -1)
GUISetBkColor(0x434E54)
$Username = GUICtrlCreateLabel("Username", 24, 33, 80, 22, BitOR($SS_CENTER,$SS_CENTERIMAGE))
GUICtrlSetFont(-1, 11, 400, 0, "Candara")
GUICtrlSetColor(-1, 0xFFFFFF)
$Password = GUICtrlCreateLabel("Password", 24, 63, 81, 22, BitOR($SS_CENTER,$SS_CENTERIMAGE))
GUICtrlSetFont(-1, 11, 400, 0, "Candara")
GUICtrlSetColor(-1, 0xFFFFFF)
$UserInput = GUICtrlCreateInput("", 111, 33, 118, 21)
$PasswordInput = GUICtrlCreateInput("", 111, 63, 118, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_PASSWORD))
$Autentificare = GUICtrlCreateButton("Autentificare", 237, 33, 73, 52)
$Output = GUICtrlCreateLabel("", 87, 102, 180, 26)
GUICtrlSetFont(-1, 12, 400, 0, "Palatino Linotype")
Dim $Login_AccelTable[1][2] = [["{ENTER}", $Autentificare]]
GUISetAccelerators($Login_AccelTable)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
#Region ### START Koda GUI section ### Form=@WorkingDir\form\program.kxf
$Program = GUICreate("", 755, 458, -1, -1)
GUISetBkColor(0xFFFFFF)
$Scutere = GUICtrlCreateLabel("SCUTERE", 48, 87, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x660000)
$Biciclete = GUICtrlCreateLabel("BICICLETE", 48, 135, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$Atv = GUICtrlCreateLabel("ATV-URI", 48, 183, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$MOTOARE = GUICtrlCreateLabel("MOTOARE", 48, 231, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$Echipament = GUICtrlCreateLabel("ECHIPAMENT", 48, 279, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$Pic1 = GUICtrlCreatePic(@WorkingDir&"\Data\Pic\scooter2.gif", 0, 87, 48, 48, BitOR($GUI_SS_DEFAULT_PIC,$SS_CENTERIMAGE))
$Pic2 = GUICtrlCreatePic(@WorkingDir&"\Data\Pic\bicycle2.gif", 0, 135, 48, 48, BitOR($GUI_SS_DEFAULT_PIC,$SS_CENTERIMAGE))
$Pic3 = GUICtrlCreatePic(@WorkingDir&"\Data\Pic\atv2.gif", 0, 183, 48, 48, BitOR($GUI_SS_DEFAULT_PIC,$SS_CENTERIMAGE))
$Pic4 = GUICtrlCreatePic(@WorkingDir&"\Data\Pic\hammer2.gif", 0, 231, 48, 48, BitOR($GUI_SS_DEFAULT_PIC,$SS_CENTERIMAGE))
$Pic5 = GUICtrlCreatePic(@WorkingDir&"\Data\Pic\jacket2.gif", 0, 279, 48, 48, BitOR($GUI_SS_DEFAULT_PIC,$SS_CENTERIMAGE))
$Iesire = GUICtrlCreateLabel("FINALUL ZILEI", 0, 399, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$listBoxStyle = BitOr($LBS_NOTIFY, $WS_VSCROLL, $WS_BORDER)
$Lista = GUICtrlCreateListView("N|Produs                 |Pret     ", 534, 87, 217, 187, $listboxStyle)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x434E54)
$nr1 = GUICtrlCreateLabel("1", 534, 291, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr2 = GUICtrlCreateLabel("2", 576, 291, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr3 = GUICtrlCreateLabel("3", 618, 291, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr4 = GUICtrlCreateLabel("4", 534, 330, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr5 = GUICtrlCreateLabel("5", 576, 330, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr6 = GUICtrlCreateLabel("6", 618, 330, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr7 = GUICtrlCreateLabel("7", 534, 369, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr8 = GUICtrlCreateLabel("8", 576, 369, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr9 = GUICtrlCreateLabel("9", 618, 369, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr0 = GUICtrlCreateLabel("0", 534, 408, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$nr00 = GUICtrlCreateLabel("00", 576, 408, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$CLR = GUICtrlCreateLabel("CLR", 618, 408, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$Sus = GUICtrlCreateLabel("▲", 705, 291, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 20, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$Jos = GUICtrlCreateLabel("▼", 705, 330, 44, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 20, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$Card = GUICtrlCreateLabel("Card", 660, 369, 89, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x808000)
$Cashlab = GUICtrlCreateLabel("Cash", 660, 408, 89, 40, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x008000)
$Del = GUICtrlCreateLabel("DEL", 660, 291, 47, 79, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$item1 = GUICtrlCreateLabel("", 192, 177, 102, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$item2 = GUICtrlCreateLabel("", 294, 177, 102, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$item3 = GUICtrlCreateLabel("", 396, 177, 102, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$item4 = GUICtrlCreateLabel("", 192, 228, 102, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$item5 = GUICtrlCreateLabel("", 294, 228, 102, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$item6 = GUICtrlCreateLabel("", 396, 228, 102, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$cat1 = GUICtrlCreateLabel("", 156, 87, 75, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x660000)
$cat2 = GUICtrlCreateLabel("", 231, 87, 75, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$cat3 = GUICtrlCreateLabel("", 306, 87, 75, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$cat4 = GUICtrlCreateLabel("", 381, 87, 75, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$cat5 = GUICtrlCreateLabel("", 456, 87, 75, 50, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC8C8C8)
GUICtrlSetBkColor(-1, 0x000000)
$Stocklab = GUICtrlCreateLabel("STOCK", 105, 399, 107, 49, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 12, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xA0A0A4)
GUICtrlSetBkColor(-1, 0x000000)
$FundalMOTO = GUICtrlCreatePic(@WorkingDir&"\Data\Pic\moto.jpg", 0, -3, 748, 88)
$Total = GUICtrlCreateLabel("                                               TOTAL                    0.00 lei", 534, 274, 216, 25, -1, $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 10, 400, 0, "Impact")
GUICtrlSetColor(-1, 0x000000)
GUICtrlSetBkColor(-1, 0x434E54)
#EndRegion ### END Koda GUI section ###
#Region ### START Koda GUI section ### Form=c:\users\anazerow\desktop\ana proiect\form\cash.kxf
$Cash = GUICreate("Cash", 270, 386, -1, -1)
GUISetBkColor(0xFFFFFF)
$first = GUICtrlCreateLabel("500 lei", 21, 24, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$firsti = GUICtrlCreateInput("", 72, 21, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$second = GUICtrlCreateLabel("200 lei", 21, 48, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$secondi = GUICtrlCreateInput("", 72, 45, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$third = GUICtrlCreateLabel("100 lei", 21, 72, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$thirdi = GUICtrlCreateInput("", 72, 69, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$fourth = GUICtrlCreateLabel("50 lei", 21, 96, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$fourthi = GUICtrlCreateInput("", 72, 93, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$fifth = GUICtrlCreateLabel("10 lei", 21, 120, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$fifthi = GUICtrlCreateInput("", 72, 117, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$sixth = GUICtrlCreateLabel("5 lei", 21, 144, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$sixthi = GUICtrlCreateInput("", 72, 141, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$seventh = GUICtrlCreateLabel("1 leu", 21, 168, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$seventhi = GUICtrlCreateInput("", 72, 165, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$eight = GUICtrlCreateLabel("50 Bani", 21, 192, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$eighti = GUICtrlCreateInput("", 72, 189, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$ninth = GUICtrlCreateLabel("10 Bani", 21, 216, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$ninthi = GUICtrlCreateInput("", 72, 213, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$tenth = GUICtrlCreateLabel("5 Bani", 21, 240, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$tenthi = GUICtrlCreateInput("", 72, 237, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$eleventh = GUICtrlCreateLabel("1 Ban", 21, 264, 49, 22)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$eleventhi = GUICtrlCreateInput("", 72, 261, 103, 26)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$Tot = GUICtrlCreateLabel("Total", 21, 288, 49, 23)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$tot1 = GUICtrlCreateLabel("0 Lei.", 72, 288, 103, 23)
GUICtrlSetFont(-1, 11, 400, 0, "Georgia")
$Continua = GUICtrlCreateButton("Continua", 33, 336, 202, 34)
$war1 = GUICtrlCreateLabel("", 177, 21, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war2 = GUICtrlCreateLabel("", 177, 45, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war3 = GUICtrlCreateLabel("", 177, 69, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war4 = GUICtrlCreateLabel("", 177, 93, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war5 = GUICtrlCreateLabel("", 177, 117, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war6 = GUICtrlCreateLabel("", 177, 141, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war7 = GUICtrlCreateLabel("", 177, 165, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war8 = GUICtrlCreateLabel("", 177, 189, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war9 = GUICtrlCreateLabel("", 177, 213, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war10 = GUICtrlCreateLabel("", 177, 237, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
$war11 = GUICtrlCreateLabel("", 177, 261, 18, 23)
GUICtrlSetFont(-1, 14, 800, 0, "Impact")
GUICtrlSetColor(-1, 0xFF0000)
#EndRegion ### END Koda GUI section ###
#Region ### START Koda GUI section ### Form=C:\Users\anazerow\Desktop\Ana Proiect\Form\CashForm.kxf
$CashForm = GUICreate("Plata Cash", 266, 374, -1,-1,BitOR($ws_popup, $ds_modalframe))
GUISetBkColor(0x000000)
$plata1 = GUICtrlCreateLabel("1", 33, 72, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata2 = GUICtrlCreateLabel("2", 99, 72, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$Plata3 = GUICtrlCreateLabel("3", 165, 72, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata4 = GUICtrlCreateLabel("4", 33, 117, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata5 = GUICtrlCreateLabel("5", 99, 117, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata6 = GUICtrlCreateLabel("6", 165, 117, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata7 = GUICtrlCreateLabel("7", 33, 162, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata8 = GUICtrlCreateLabel("8", 99, 162, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata9 = GUICtrlCreateLabel("9", 165, 162, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$plata0 = GUICtrlCreateLabel("0", 33, 207, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$platapunct = GUICtrlCreateLabel(".", 99, 207, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 22, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$platadel = GUICtrlCreateLabel("<<=", 165, 207, 67, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$Incasare = GUICtrlCreateLabel("Incaseaza", 33, 255, 199, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
GUICtrlSetBkColor(-1, 0x008000)
$ecranplata = GUICtrlCreateLabel("", 33, 21, 199, 44, $SS_CENTERIMAGE, $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 22, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$renuntaplata = GUICtrlCreateLabel("Renunta", 33, 297, 199, 44, BitOR($SS_CENTER,$SS_CENTERIMAGE), $WS_EX_STATICEDGE)
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
GUICtrlSetBkColor(-1, 0x808000)
#EndRegion ### END Koda GUI section ###
#Region ### START Koda GUI section ### Form=c:\users\anazerow\desktop\ana proiect\form\rest.kxf
$RestForm = GUICreate("Rest", 333, 110, -1,-1,BitOR($ws_popup, $ds_modalframe))
GUISetBkColor(0x000000)
$staticlabel = GUICtrlCreateLabel("Restul Clientului = ", 30, 24, 160, 32)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$Restul = GUICtrlCreateLabel("", 195, 12, 100, 47)
GUICtrlSetFont(-1, 28, 400, 0, "Impact")
GUICtrlSetColor(-1, 0x00FF00)
$staticlabel2 = GUICtrlCreateLabel("lei", 294, 24, 31, 32)
GUICtrlSetFont(-1, 16, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
$Buttonlabel = GUICtrlCreateLabel("OK", 90, 60, 147, 35, BitOR($SS_CENTER,$SS_RIGHTJUST))
GUICtrlSetFont(-1, 24, 400, 0, "Impact")
GUICtrlSetColor(-1, 0xC0C0C0)
GUICtrlSetBkColor(-1, 0x800000)
#EndRegion ### END Koda GUI section ###
#Region ### START Koda GUI section ### Form=C:\Users\anazerow\Desktop\Ana Proiect\Form\StockForm.kxf
$StockForm = GUICreate("Stock Management", 522, 492, -1, -1)
GUISetBkColor(0xA0A0A4)
$Listastock = GUICtrlCreateListView("Categorie|   Marca   |              Nume              |Cantitate|Cantitate Actuala", 18, 18, 484, 396,$listboxStyle)
GUICtrlSetBkColor(-1, 0xC0C0C0)
$AdaugaBut = GUICtrlCreateLabel("Adauga", 108, 432, 116, 38, BitOR($SS_CENTER,$SS_CENTERIMAGE))
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetBkColor(-1, 0xB9D1EA)
$VerificaBut = GUICtrlCreateLabel("Verifica", 306, 432, 116, 38, BitOR($SS_CENTER,$SS_CENTERIMAGE))
GUICtrlSetFont(-1, 14, 400, 0, "Impact")
GUICtrlSetBkColor(-1, 0xB9D1EA)
;GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

$file=@WorkingDir&"\Data\Stock.txt"
Global $Pret=0
Global $numar=0
Global $totalcash=0
Global $totalcashziua=0
Global $iesireban=0
Global $verificat=0
Global $inputlista[(_FileCountLines($file)+1)]
Local $stockdetalii[6][6][7][4]
Local $liniedespartita[5]
local $s=0

citestestock()
categorii()
detaliere(1,1)
$s1=1
$s2=1
$numarintrodus=""
$dejapunct=0

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Autentificare
			If GUICTRLread($UserInput)="Admin" AND GUICtrlRead($PasswordInput)="AnaBucur" Then
				GUICtrlSetData($output, "Autentificare reusita!")
				sleep(500)
				GUISetState(@SW_Hide, $Login)
				Sleep(500)
				GUISetState(@SW_Show, $Cash)
			Else
				GUICtrlSetData($output, "Nume sau parola gresita")
			EndIf
		Case $Continua
			if $iesireban=0 Then
				if $totalcash=0 Then
					$intrebare=MsgBox(4, "", "Esti sigur ca vrei sa incepi ziua cu 0 lei in casa de marcat?")
					if $intrebare=6 Then
						verificarenumere()
					EndIf
				Else
					verificarenumere()
				EndIf
			Else
				$verificat=0
				verificarenumere()
				If $verificat=1 Then
					$inceputziuaread=FileReadLine(@WorkingDir&"\Data\Log.txt",_FileCountLines(@WorkingDir&"\Data\Log.txt"))
					$stringsplit=StringSplit($inceputziuaread, " . ")
					$inceputziua=$stringsplit[4]
					$varianta= ($totalcash - ($inceputziua+$totalcashziua))
					if $varianta < 5 AND $varianta > -5 Then
						$mesaj = MsgBox(0, "Varianta", "Varianta pe ziua de azi este : "&$varianta&" Lei.")
						_FileWriteLog(@WorkingDir&"\Data\variantaLOG.txt", $varianta)
						if $mesaj=1 Then
							Exit
						EndIf
					Else
						$intrebare=MsgBox(4, "Varianta", "Varianta este mai mare de 5! Vrei sa continui??")
						If $intrebare=6 Then
							$mesaj = MsgBox(0, "Varianta", "Varianta pe ziua de azi este : "&$varianta&" Lei.")
							_FileWriteLog(@WorkingDir&"\Data\variantaLOG.txt", $varianta)
							if $mesaj=1 Then
								Exit
							EndIf
						EndIf
					EndIf
				EndIf
			EndIf
		Case $Iesire
			$iesireban=1
			sleep(500)
			GUISetState(@SW_Hide, $Program)
			Sleep(500)
			GUISetState(@SW_Show, $Cash)
		Case $Scutere
			$s1=1
			$S2=1
			detaliere($s1,$s2)
			culori($Scutere)
			categorii()
		Case $Biciclete
			$s1=2
			$S2=1
			detaliere($s1,$s2)
			culori($Biciclete)
			catbiciclete()
		Case $Atv
			$s1=3
			$S2=1
			detaliere($s1,$s2)
			culori($Atv)
			categorii()
		Case $MOTOARE
			$s1=4
			$S2=1
			detaliere($s1,$s2)
			culori($MOTOARE)
			categorii()
		Case $Echipament
			$s1=5
			$S2=1
			detaliere($s1,$s2)
			culori($echipament)
			catechipament()
		Case $cat1
			$s2=1
			detaliere($s1,$s2)
			culori2($cat1)
		Case $cat2
			$s2=2
			detaliere($s1,$s2)
			culori2($cat2)
		Case $cat3
			$s2=3
			detaliere($s1,$s2)
			culori2($cat3)
		Case $cat4
			$s2=4
			detaliere($s1,$s2)
			culori2($cat4)
		Case $cat5
			$s2=5
			detaliere($s1,$s2)
			culori2($cat5)
		Case $nr1
			bling($nr1)
			introducerenumar(1)
		Case $nr2
			bling($nr2)
			introducerenumar(2)
		Case $nr3
			bling($nr3)
			introducerenumar(3)
		Case $nr4
			bling($nr4)
			introducerenumar(4)
		Case $nr5
			bling($nr5)
			introducerenumar(5)
		Case $nr6
			bling($nr6)
			introducerenumar(6)
		Case $nr7
			bling($nr7)
			introducerenumar(7)
		Case $nr8
			bling($nr8)
			introducerenumar(8)
		Case $nr9
			bling($nr9)
			introducerenumar(9)
		Case $nr00
			bling($nr00)
			introducerenumar(10)
		Case $nr0
			bling($nr0)
			introducerenumar(0)
		Case $jos
			if _GUICtrlListView_GetItemCount($lista) > 0 then
				if _GUICtrlListView_GetSelectedIndices($lista)<>"" AND _GUICtrlListView_GetSelectedIndices($lista)+1<_GUICtrlListView_GetItemCount($lista) Then
					$salut = _GUICtrlListView_GetSelectedIndices($lista)+1
					_GUICtrlListView_SetItemSelected($lista, -1, False)
					_GUICtrlListView_SetItemSelected($lista,$salut,true,true)
				Else
					_GUICtrlListView_SetItemSelected($lista, -1, False)
					_GUICtrlListView_SetItemSelected($lista,0,true,true)
				EndIf
			endif
			bling($jos)
		Case $sus
			if _GUICtrlListView_GetItemCount($lista) > 0 then
				if _GUICtrlListView_GetSelectedIndices($lista)<>"" AND _GUICtrlListView_GetSelectedIndices($lista)>0 Then
					$salut = _GUICtrlListView_GetSelectedIndices($lista)-1
					_GUICtrlListView_SetItemSelected($lista, -1, False)
					_GUICtrlListView_SetItemSelected($lista,$salut,true,true)
				Else
					_GUICtrlListView_SetItemSelected($lista, -1, False)
					_GUICtrlListView_SetItemSelected($lista,_GUICtrlListView_GetItemCount($lista)-1,true,true)
				EndIf
			endif
			bling($sus)
		Case $del
			bling($Del)
			delete()
		Case $CLR
			bling($CLR)
			if $numar>0 Then
				_GUICtrlListView_DeleteItem($lista, _GUICtrlListView_GetItemCount($lista)-1)
			EndIf
		Case $Cashlab
			if $pret<>0 Then
				blingc($Cashlab)
				$pozitie=WinGetPos($Program)
				WinMove($CashForm,"",$pozitie[0],$pozitie[1])
				GUISetState(@SW_DISABLE, $Program)
				GUISetState(@SW_SHOW, $CashForm)
				for $i=0 to 255 step 25.5
					WinSetTrans($CashForm,"",$i)
					sleep(50)
				next
			EndIf
		Case $item1
			bling($item1)
			display($item1)
		Case $item2
			bling($item2)
			display($item2)
		Case $item3
			bling($item3)
			display($item3)
		Case $item4
			bling($item4)
			display($item4)
		Case $item5
			bling($item5)
			display($item5)
		Case $item6
			bling($item6)
			display($item6)
		Case $renuntaplata
			blingc2($renuntaplata)
			$numarintrodus=""
			$dejapunct=0
			GUICtrlSetData($ecranplata,"")
			for $i=250 to 0 step -25
				WinSetTrans($CashForm,"",$i)
				sleep(50)
			next
			GUISetState(@SW_HIDE,$CashForm)
			GUISetState(@SW_ENABLE,$Program)
		Case $Incasare
			blingc($Incasare)
			incasare()
		Case $plata1
			bling($plata1)
			introducenumar2(1)
		Case $plata2
			bling($plata2)
			introducenumar2(2)
		Case $plata3
			bling($plata3)
			introducenumar2(3)
		Case $plata4
			bling($plata4)
			introducenumar2(4)
		Case $plata5
			bling($plata5)
			introducenumar2(5)
		Case $plata6
			bling($plata6)
			introducenumar2(6)
		Case $plata7
			bling($plata7)
			introducenumar2(7)
		Case $plata8
			bling($plata8)
			introducenumar2(8)
		Case $plata9
			bling($plata9)
			introducenumar2(9)
		Case $plata0
			bling($plata0)
			introducenumar2("0")
		Case $platapunct
			bling($platapunct)
			introducenumar2(".")
		Case $platadel
			bling($platadel)
			$numarintrodus=""
			$dejapunct=0
			GUICtrlSetData($ecranplata,"")
		Case $Buttonlabel
			GUICtrlSetData($restul,"")
			GUISetState(@SW_HIDE,$Restform)
			GUISetState(@SW_ENABLE,$Program)
		Case $Stocklab
			bling($stocklab)
	EndSwitch
	$totalcash=0
	interzislitere()
	if $totalcash <> GUICtrlRead($tot1) Then
		GUICtrlSetData($tot1,$totalcash&" Lei.")
	endif
WEnd


Func modificarecant()
	local $toatalista[20][4]
			for $i=0 to (_GUICtrlListView_GetItemCount($lista)-1)
				$aItem = _GUICtrlListView_GetItemTextArray($lista, $i)
				for $j=1 to 3
					$toatalista[$i][$j]=$aItem[$j]
				next
			Next
			for $j=0 to (_GUICtrlListView_GetItemCount($lista)-1)
				for $i=1 to _FileCountLines($file)
					$line= FileReadLine($file,$i)
					$liniedespartita=StringSplit($line, ".")
					if $liniedespartita[3] = $toatalista[$j][2] Then
						_FileWriteToLine($file, $i, $liniedespartita[1]&"."&$liniedespartita[2]&"."&$liniedespartita[3]&"."&$liniedespartita[4]&"."&($liniedespartita[5]-$toatalista[$j][1]), True)
						for $k=1 to 6
							if $stockdetalii[$liniedespartita[1]][$liniedespartita[2]][$k][1]=$liniedespartita[3] Then
								$stockdetalii[$liniedespartita[1]][$liniedespartita[2]][$k][3]=$liniedespartita[5]-$toatalista[$j][1]
							EndIf
						next
					EndIf
				next
			Next
EndFunc
Func incasare()
	if $numarintrodus>=$pret Then
		$totalcashziua=$totalcashziua+$pret
		GUICtrlSetData($ecranplata,"")
		modificarecant()
		_GUICtrlListView_DeleteAllItems($lista)
		$restclient=$numarintrodus-$pret
		$numarintrodus=""
		$dejapunct=0
		$pret=0
		GUICtrlSetData($Total, "                                               TOTAL                 0.00 lei")
		GUICtrlSetData($ecranplata,"")
		GUICtrlSetData($Restul,$restclient)
		$pozitie=WinGetPos($Program)
		WinMove($restform,"",$pozitie[0],$pozitie[1])
		GUISetState(@SW_HIDE,$CashForm)
		GUISetState(@SW_SHOW,$Restform)
	EndIf
EndFunc
Func introducenumar2($x)
	if GUICtrlRead($ecranplata)="" Then
		if $x="." OR $x="0" Then
			$numarintrodus="0."
			$dejapunct=1
		Else
			$numarintrodus=$numarintrodus & $x
		EndIf
	Else
		if $x="." Then
			if $dejapunct=0 Then
				$numarintrodus=$numarintrodus&$x
				$dejapunct=1
			EndIf
		Else
			$numarintrodus = $numarintrodus&$x
		EndIf
	EndIf
	GUICtrlSetData($ecranplata,$numarintrodus)
EndFunc
Func introducerenumar($x)
	if $x<10 and $x>0 then
		$R=_GUICtrlListView_GetItemCount($lista)
		$aItem2 = _GUICtrlListView_GetItemTextArray($lista,$R-1)
		if $aItem2[1]<>"" and $aItem2[2]="" Then
			$numar = ($numar*10)+$x
			_GUICtrlListView_DeleteItem($lista, $R-1)
			_GUICtrlListView_AddItem($lista,$numar,$R-1)
		else
			$numar=$x
			_GUICtrlListView_AddItem($lista,$numar,$R)
		EndIf
	Else
		$R=_GUICtrlListView_GetItemCount($lista)
		$aItem2 = _GUICtrlListView_GetItemTextArray($lista,$R-1)
		if $aItem2[1]<>"" and $aItem2[2]="" Then
			if $x=0 Then
				$p=10
			else
				$p=100
			EndIf
			$numar = $numar*$p
			_GUICtrlListView_DeleteItem($lista, $R-1)
			_GUICtrlListView_AddItem($lista,$numar,$R-1)
		endif
	EndIf
EndFunc
Func verificarenumere()
	if mod(GUICtrlRead($firsti),500)=0 then
		GUICtrlSetData($war1,"")
				if mod(GUICtrlRead($secondi),200)=0 then
					GUICtrlSetData($war2,"")
					if mod(GUICtrlRead($thirdi),100)=0 then
						GUICtrlSetData($war3,"")
						if mod(GUICtrlRead($fourthi),50)=0 then
							GUICtrlSetData($war4,"")
							if mod(GUICtrlRead($fifthi),10)=0 then
								GUICtrlSetData($war5,"")
								if mod(GUICtrlRead($sixthi),5)=0 then
									GUICtrlSetData($war6,"")
									if mod(GUICtrlRead($seventhi)*10,10)=0 then
										GUICtrlSetData($war7,"")
										if mod(GUICtrlRead($eighti)*10,5)=0 then
											GUICtrlSetData($war8,"")
											if mod(GUICtrlRead($ninthi)*100,10)=0 then
												GUICtrlSetData($war9,"")
												if mod(GUICtrlRead($tenthi)*100,5)=0 then
													GUICtrlSetData($war10,"")
													$verificat=1
													if $iesireban=0 Then
														_FileWriteLog(@WorkingDir&"\Data\log.txt", $totalcash)
														sleep(500)
														GUISetState(@SW_Hide, $cash)
														Sleep(500)
														GUISetState(@SW_Show, $Program)
														GUICtrlSetData($firsti,"")
														GUICtrlSetData($secondi,"")
														GUICtrlSetData($thirdi,"")
														GUICtrlSetData($fourthi,"")
														GUICtrlSetData($fifthi,"")
														GUICtrlSetData($sixthi,"")
														GUICtrlSetData($seventhi,"")
														GUICtrlSetData($eighti,"")
														GUICtrlSetData($ninthi,"")
														GUICtrlSetData($tenthi,"")
														GUICtrlSetData($eleventhi,"")
													EndIf
												Else
													GUICtrlSetData($war10,"!")
												EndIf
											Else
												GUICtrlSetData($war9,"!")
											EndIf
										else
											GUICtrlSetData($war8,"!")
										EndIf
									Else
										GUICtrlSetData($war7,"!")
									EndIf
								Else
									GUICtrlSetData($war6,"!")
								EndIf
							Else
								GUICtrlSetData($war5,"!")
							EndIf
						Else
							GUICtrlSetData($war4,"!")
						EndIf
					Else
						GUICtrlSetData($war3,"!")
					EndIf
				Else
					GUICtrlSetData($war2,"!")
				EndIf
			Else
				GUICtrlSetData($war1,"!")
			Endif
EndFunc
func interzislitere()
	for $i=1 to 21 step +2
		$totalcash=$totalcash+GUICtrlRead(52+$i)
		If StringRegExp(GUICtrlRead(52+$i), "[^\d\.]") Then
		GUICtrlSetData(52+$i, StringRegExpReplace(GuiCtrlRead(52+$i), "[^\d\.]", ""))
		endif
	next
EndFunc
func delete()
	$aItem = _GUICtrlListView_GetItemTextArray($lista)
	if _GUICtrlListView_GetSelectedIndices($lista)<>"" and $aItem[2]<>"" Then
		for $i=1 to 5
			for $j=1 to 5
				for $k=1 to 6
					if $stockdetalii[$i][$j][$k][1] = $aItem[2] Then
						if $stockdetalii[$i][$j][$k][3]<1 Then
							GUICtrlSetState($k+37, $GUI_SHOW)
						EndIf
						$stockdetalii[$i][$j][$k][3]=$stockdetalii[$i][$j][$k][3]+1
						$pret=$pret - $stockdetalii[$i][$j][$k][2]
						$schimbarepret=$stockdetalii[$i][$j][$k][2]*($aItem[1]-1)
						if $pret=0 then
							GUICtrlSetData($Total, "                                               TOTAL                    0.00 lei")
						Else
							GUICtrlSetData($Total, "                                               TOTAL                 "&$Pret&" lei")
						endif
					EndIf
				Next
			Next
		Next
		if $aItem[1]=1 Then
			_GUICtrlListView_DeleteItemsSelected($lista)
		Else
			_GUICtrlListView_SetItem($lista,$aItem[1]-1,_GUICtrlListView_GetSelectedIndices($lista))
			_GUICtrlListView_SetItem($lista,$schimbarepret&" lei",_GUICtrlListView_GetSelectedIndices($lista),2)
		EndIf
	EndIf
EndFunc
Func display($x)
	if $numar=0 Then
		$Pret=$Pret+$stockdetalii[$s1][$s2][$x-37][2]
		GUICtrlSetData($Total, "                                               TOTAL                 "&$Pret&" lei")
		$R=_GUICtrlListView_GetItemCount($lista)
		_GUICtrlListView_AddItem($lista,"1",$R)
		_GUICtrlListView_AddSubItem($lista,$R,$stockdetalii[$s1][$s2][$x-37][1],1)
		_GUICtrlListView_AddSubItem($lista,$R,$stockdetalii[$s1][$s2][$x-37][2]&" lei",2)
		$stockdetalii[$s1][$s2][$x-37][3]=$stockdetalii[$s1][$s2][$x-37][3]-1
		if $stockdetalii[$s1][$s2][$x-37][3]<1 then
			GUICtrlSetState($x, $GUI_HIDE)
		endif
	else
		if $stockdetalii[$s1][$s2][$x-37][3]<$numar then
			GUICtrlSetState($x, $GUI_HIDE)
			$numar=$stockdetalii[$s1][$s2][$x-37][3]
			$Pret=$Pret+($stockdetalii[$s1][$s2][$x-37][2]*$numar)
			GUICtrlSetData($Total, "                                               TOTAL                 "&$Pret&" lei")
			$R=_GUICtrlListView_GetItemCount($lista)
			_GUICtrlListView_DeleteItem($lista, $R-1)
			_GUICtrlListView_AddItem($lista,$numar,$R-1)
			_GUICtrlListView_AddSubItem($lista,$R-1,$stockdetalii[$s1][$s2][$x-37][1],1)
			_GUICtrlListView_AddSubItem($lista,$R-1,($stockdetalii[$s1][$s2][$x-37][2]*$numar)&" lei",2)
			$stockdetalii[$s1][$s2][$x-37][3]=$stockdetalii[$s1][$s2][$x-37][3]-$numar
			$numar=0
		ElseIf $stockdetalii[$s1][$s2][$x-37][3]>$numar Then
			$Pret=$Pret+($stockdetalii[$s1][$s2][$x-37][2]*$numar)
			GUICtrlSetData($Total, "                                               TOTAL                 "&$Pret&" lei")
			$R=_GUICtrlListView_GetItemCount($lista)-1
			_GUICtrlListView_AddSubItem($lista,$R,$stockdetalii[$s1][$s2][$x-37][1],1)
			_GUICtrlListView_AddSubItem($lista,$R,($stockdetalii[$s1][$s2][$x-37][2]*$numar)&" lei",2)
			$stockdetalii[$s1][$s2][$x-37][3]=$stockdetalii[$s1][$s2][$x-37][3]-$numar
			$numar=0
		ElseIf $stockdetalii[$s1][$s2][$x-37][3]=$numar Then
			GUICtrlSetState($x, $GUI_HIDE)
			$Pret=$Pret+($stockdetalii[$s1][$s2][$x-37][2]*$numar)
			GUICtrlSetData($Total, "                                               TOTAL                 "&$Pret&" lei")
			$R=_GUICtrlListView_GetItemCount($lista)-1
			_GUICtrlListView_AddSubItem($lista,$R,$stockdetalii[$s1][$s2][$x-37][1],1)
			_GUICtrlListView_AddSubItem($lista,$R,($stockdetalii[$s1][$s2][$x-37][2]*$numar)&" lei",2)
			$stockdetalii[$s1][$s2][$x-37][3]=$stockdetalii[$s1][$s2][$x-37][3]-$numar
			$numar=0
		EndIf
	EndIf
EndFunc
Func detaliere($x,$y)
	For $i=1 to 6
		if $stockdetalii[$x][$y][$i][3]>0 then
			GUICtrlSetState(37+$i, $GUI_SHOW)
			GUICtrlSetData(37+$i, $stockdetalii[$x][$y][$i][1])
		Else
			GUICtrlSetState(37+$i, $GUI_HIDE)
		endif
	Next
EndFunc
Func bling($x)
	GUICtrlSetBkColor($x, 0x660000)
	Sleep(100)
	GUICtrlSetBkColor($x, 0x000000)
EndFunc
Func blingc($x)
	GUICtrlSetBkColor($x, 0x009900)
	Sleep(100)
	GUICtrlSetBkColor($x, 0x008000)
EndFunc
Func blingc2($x)
	GUICtrlSetBkColor($x, 0x008080)
	Sleep(100)
	GUICtrlSetBkColor($x, 0x808000)
EndFunc
Func categorii()
	GUICtrlSetState($cat3, $GUI_SHOW)
	GUICtrlSetState($cat4, $GUI_SHOW)
	GUICtrlSetState($cat5, $GUI_SHOW)
	GUICtrlSetData($cat1,"FirstBike")
	GUICtrlSetData($cat2,"RichMotors")
	GUICtrlSetData($cat3,"Lifan")
	GUICtrlSetData($cat4,"Keeway")
	GUICtrlSetData($cat5,"Pegasso")
Endfunc
Func catbiciclete()
	Guictrlsetdata($cat1, "Z-Tech")
	GUICtrlSetData($cat2, "Green")
	GUICtrlSetState($cat3, $GUI_HIDE)
	GUICtrlSetState($cat4, $GUI_HIDE)
	GUICtrlSetState($cat5, $GUI_HIDE)
Endfunc
Func catechipament()
	GUICtrlSetState($cat3, $GUI_SHOW)
	GUICtrlSetState($cat4, $GUI_SHOW)
	GUICtrlSetState($cat5, $GUI_SHOW)
	GUICtrlSetData($cat1,"Casti")
	GUICtrlSetData($cat2,"Ochelari")
	GUICtrlSetData($cat3,"Cizme")
	GUICtrlSetData($cat4,"Geaca")
	GUICtrlSetData($cat5,"Pantaloni")
Endfunc
Func culori($x)
			GUICtrlSetBkColor($Echipament, 0x000000)
			GUICtrlSetbkColor($Scutere, 0x000000)
			GUICtrlSetbkColor($MOTOARE, 0x000000)
			GUICtrlSetbkColor($Atv, 0x000000)
			GUICtrlSetbkColor($Biciclete, 0x000000)
			GUICtrlSetBkColor($x,0x660000)
			GUICtrlSetBkColor($cat1, 0x660000)
			GUICtrlSetbkColor($cat2, 0x000000)
			GUICtrlSetbkColor($cat3, 0x000000)
			GUICtrlSetbkColor($cat4, 0x000000)
			GUICtrlSetbkColor($cat5, 0x000000)
EndFunc
Func culori2($x)
			GUICtrlSetBkColor($cat1, 0x000000)
			GUICtrlSetbkColor($cat2, 0x000000)
			GUICtrlSetbkColor($cat3, 0x000000)
			GUICtrlSetbkColor($cat4, 0x000000)
			GUICtrlSetbkColor($cat5, 0x000000)
			GUICtrlSetBkColor($x,0x660000)
EndFunc
Func citestestock()
	For $i=1 to _FileCountLines($file)
		If $S<6 Then
			$S=$S+1
		Else
			$S=1
		EndIf
		$line= FileReadLine($file,$i)
		$liniedespartita=StringSplit($line, ".")
		;if $liniedespartita[1]=1 Then
		;		_GUICtrlListView_AddItem($Listastock, "Scutere", $i)
		;		if $liniedespartita[2]=1 Then
		;			_GUICtrlListView_AddSubItem($Listastock,$i, "FirstBike")
		;			_GUICtrlListView_AddSubItem($Listastock,$i, $liniedespartita[3])
		;			_GUICtrlListView_AddSubItem($Listastock,$i, $liniedespartita[5])
		;			_GUICtrlListView_AddSubItem($Listastock,$i, GUICtrlCreateInput("",-1,-1,20,30)
		;		EndIf
		;EndIf
		For $j=1 to 3
			$stockdetalii[$liniedespartita[1]][$liniedespartita[2]][$S][$j] = $liniedespartita[($j+2)]
		Next
	Next
EndFunc