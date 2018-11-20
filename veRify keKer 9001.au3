
#include <date.au3>
#include <File.au3>

#include <ImageSearch2015.au3>

#include <MsgBoxConstants.au3>
#include <StringConstants.au3>

Global $verify = False
Global $clickX = 0
Global $clickY = 0

HotKeySet("{ESC}", "HotKeyEsc")
Func HotKeyEsc()
	Exit
EndFunc 

While 1
	If FindImageOrigin("Assets/Verify1.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify2.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify3.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify4.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify5.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify6.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify7.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify8.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify9.png") Then
		$verify = True
	EndIf
	If FindImageOrigin("Assets/Verify10.png") Then
		$verify = True
	EndIf
	If $verify = True Then
		VerifyAlert()
	EndIf
WEnd

Func VerifyAlert()
	While 1
		Beep(5000, 100)
		Sleep(100)
	WEnd
EndFunc



Func FindImageOrigin($FindImageOrigin, $tolerance = 0)
	Local $array = [0, 0, @DesktopWidth, @DesktopHeight]
	If $tolerance = 0 Then $tolerance = 50
	Return _ImageSearchArea($FindImageOrigin, 0, $array[0], $array[1], $array[2], $array[3], $clickX, $clickY, $tolerance, 0)
EndFunc  