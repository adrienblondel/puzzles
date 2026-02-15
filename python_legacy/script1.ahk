; ================Notes==================
; This script was made by Grimagin with location references using Pixel Puzzles 2: Birds
; If you enjoyed the use of this automated script, show your support on Steam
; Leave a like, 5 stars, and/or a constructive comment on the steam guide page

; ============Macro Use Instructions=================
; 1) Download Auto Hot Key if you haven't done so already. https://autohotkey.com/
; 2) Adjust the values in the Screen Setup section to allow this macro to run for your display
; 3) Make sure you save the file using .ahk as the file extension
; 4) Double click on the file for it to run
; 5) Launch Pixel Puzzles and turn off piece rotation if option is available

; ===============Puzzle Instructions==================
; You'll have to collect all the pieces from out of the border on your own. Fortunatly for you,
; I have included a script to make that easy for you by placing all the pieces on top of each other
; on the lower right corner of the puzzle board.

; =============Screen Setup==============
; Please Enter your screen resolution in the variables below
; Display is listed in pixels, Resolution is the aspect ratio

DisplayX = 5120
DisplayY = 2160
ResolutionX = 16
ResolutionY = 9

; =================Control Modifiers=================
PauseButton = Escape
Collect = C
Set = S
Rotate = R
Puzzle60 = 1
Puzzle112 = 2
Puzzle153 = 3
Puzzle220 = 4
Puzzle350 = 5
RotatePuzzle60 = ^1
RotatePuzzle112 = ^2
RotatePuzzle153 = ^3
RotatePuzzle220 = ^4
RotatePuzzle350 = ^5

; ===============Script Hotkeys======================
; The default Setup is listed below. You can change these if you wish above in the Control Modifiers.
; Pressing Escape will Reload the script at any time.
; Pressing C on your keyboard will Collect a piece at mouse location and put it into the pile
; Pressing S on your keyboard will Set a piece on the board from the pile at mouse location
; Pressing R on your keyboard will Rotate a piece on the board at mouse location
; Respectfully pressing the following numbers (!Not the numpad!) will autofill the board with pieces:
; Press 1 for a 60 piece puzzle
; Press 2 for a 112 piece puzzle
; Press 3 for a 153 piece puzzle
; Press 4 for a 220 piece puzzle
; Press 5 for a 350 piece puzzle
; Respectfully pressing the following will autorotate each piece on the board 3 times:
; Press Ctrl+1 for a 60 piece puzzle
; Press Ctrl+2 for a 112 piece puzzle
; Press Ctrl+3 for a 153 piece puzzle
; Press Ctrl+4 for a 220 piece puzzle
; Press Ctrl+5 for a 350 piece puzzle

; =========Adjustable Screen Calulations==========
Horizontal := DisplayX/ResolutionX
Vertical := DisplayY/ResolutionY

MMX := 13.45*Horizontal
MMY := 6.958*Vertical

; ===========Hotkey Exchange=============
Hotkey, %PauseButton%, ButtonPause

Hotkey, %Collect%, ButtonCollect

Hotkey, %Set%, ButtonSet

Hotkey, %Rotate%, ButtonRotate

Hotkey, %Puzzle60%, Puzzle1

Hotkey, %Puzzle112%, Puzzle2

Hotkey, %Puzzle153%, Puzzle3

Hotkey, %Puzzle220%, Puzzle4

Hotkey, %Puzzle350%, Puzzle5

Hotkey, %RotatePuzzle60%, RotatePuzzle1

Hotkey, %RotatePuzzle112%, RotatePuzzle2

Hotkey, %RotatePuzzle153%, RotatePuzzle3

Hotkey, %RotatePuzzle220%, RotatePuzzle4

Hotkey, %RotatePuzzle350%, RotatePuzzle5
return

; ==============AHK Script===============
; Pause the Script
ButtonPause:
Reload
return

; Collect Puzzle Piece
ButtonCollect:
MouseGetPos, StartX, StartY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , U
sleep 50
MouseMove, StartX, StartY
return

; Set Puzzle Piece
ButtonSet:
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, StartX, StartY
MouseClick, left, , , , , U
return

; Rotate Puzzle Piece
ButtonRotate:
Loop, 3
{
MouseClick, left, , , , , D
sleep 50
MouseClick, right, , , , , D
sleep 50
MouseClick, right, , , , , U
sleep 50
MouseClick, left, , , , , U
sleep 50
}
return

; 60 Piece Puzzle
Puzzle1:
MyX := 2.717*Horizontal
MyY := 1.29*Vertical
Loop, 6
{
loop, 10
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, MyX, MyY
MouseClick, left, , , , , U
MyX := MyX+(1.181*Horizontal)
}
MyX := 2.717*Horizontal
MyY := MyY+(1.15*Vertical)
}
return

; 60 Piece Puzzle Rotation
RotatePuzzle1:
MyX := 2.717*Horizontal
MyY := 1.29*Vertical
Loop, 6
{
loop, 10
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MyX, MyY
sleep 50
Loop, 3
{
MouseClick, left, , , , , D
sleep 50
MouseClick, right, , , , , D
sleep 50
MouseClick, right, , , , , U
sleep 50
MouseClick, left, , , , , U
sleep 50
}
MyX := MyX+(1.181*Horizontal)
}
MyX := 2.717*Horizontal
MyY := MyY+(1.15*Vertical)
}
return

; 112 Piece Puzzle
Puzzle2:
MyX := 2.717*Horizontal
MyY := 1.29*Vertical
Loop, 8
{
loop, 14
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, MyX, MyY
MouseClick, left, , , , , U
MyX := MyX+(.8436*Horizontal)
}
MyX := 2.717*Horizontal
MyY := MyY+(.8625*Vertical)
}
return

; 112 Piece Puzzle Rotation
RotatePuzzle2:
MyX := 2.717*Horizontal
MyY := 1.29*Vertical
Loop, 8
{
loop, 14
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MyX, MyY
sleep 50
Loop, 3
{
MouseClick, left, , , , , D
sleep 50
MouseClick, right, , , , , D
sleep 50
MouseClick, right, , , , , U
sleep 50
MouseClick, left, , , , , U
sleep 50
}
MyX := MyX+(.8436*Horizontal)
}
MyX := 2.717*Horizontal
MyY := MyY+(.8625*Vertical)
}
return

; 153 Piece Puzzle
Puzzle3:
MyX := 2.43*Horizontal
MyY := 1.29*Vertical
Loop, 9
{
loop, 17
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, MyX, MyY
MouseClick, left, , , , , U
MyX := MyX+(.69*Horizontal)
}
MyX := 2.43*Horizontal
MyY := MyY+(.72*Vertical)
}
return

; 153 Piece Puzzle Rotation
RotatePuzzle3:
MyX := 2.43*Horizontal
MyY := 1.29*Vertical
Loop, 9
{
loop, 17
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MyX, MyY
sleep 50
Loop, 3
{
MouseClick, left, , , , , D
sleep 50
MouseClick, right, , , , , D
sleep 50
MouseClick, right, , , , , U
sleep 50
MouseClick, left, , , , , U
sleep 50
}
MyX := MyX+(.69*Horizontal)
}
MyX := 2.43*Horizontal
MyY := MyY+(.72*Vertical)
}
return

; 220 Piece Puzzle
Puzzle4:
MyX := 2.43*Horizontal
MyY := 1.29*Vertical
Loop, 11
{
loop, 20
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, MyX, MyY
MouseClick, left, , , , , U
MyX := MyX+(.5905*Horizontal)
}
MyX := 2.43*Horizontal
MyY := MyY+(.6278*Vertical)
}
return

; 220 Piece Puzzle Rotation
RotatePuzzle4:
MyX := 2.43*Horizontal
MyY := 1.29*Vertical
Loop, 11
{
loop, 20
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MyX, MyY
sleep 50
Loop, 3
{
MouseClick, left, , , , , D
sleep 50
MouseClick, right, , , , , D
sleep 50
MouseClick, right, , , , , U
sleep 50
MouseClick, left, , , , , U
sleep 50
}
MyX := MyX+(.5905*Horizontal)
}
MyX := 2.43*Horizontal
MyY := MyY+(.6278*Vertical)
}
return

; 350 Piece Puzzle
Puzzle5:
MyX := 2.43*Horizontal
MyY := 1.29*Vertical
Loop, 14
{
loop, 25
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MMX, MMY
sleep 50
MouseClick, left, , , , , D
sleep 50
MouseMove, MyX, MyY
MouseClick, left, , , , , U
MyX := MyX+(.4724*Horizontal)
}
MyX := 2.43*Horizontal
MyY := MyY+(.4928*Vertical)
}
return

; 350 Piece Puzzle Rotation
RotatePuzzle5:
MyX := 2.43*Horizontal
MyY := 1.29*Vertical
Loop, 14
{
loop, 25
{
MouseGetPos, StartX, StartY
sleep 50
MouseMove, MyX, MyY
sleep 50
Loop, 3
{
MouseClick, left, , , , , D
sleep 50
MouseClick, right, , , , , D
sleep 50
MouseClick, right, , , , , U
sleep 50
MouseClick, left, , , , , U
sleep 50
}
MyX := MyX+(.4724*Horizontal)
}
MyX := 2.43*Horizontal
MyY := MyY+(.4928*Vertical)
}
return