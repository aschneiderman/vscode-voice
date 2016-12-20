# Voice commands for code





include folders.vch;
include letters.vch;

# Commands for developing D3
Save and Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Ctrl+r};	
Save and Really Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}") {Ctrl+Shift+r};
Save and Run =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Up}{Enter};



# --- File commands ----------------------------------------
[File] Explorer = {Ctrl+Shift+e};	# To switch between the editor and the file navigator 

Find (File | Document) = {Ctrl+p};
Next Window = {Ctrl+Tab};
Last Window = {Ctrl+Shift+Tab};
Save As = {Ctrl+Shift+s};


# --- Editing commands ----------------------------------------
Select Line = {Ctrl+i};
Get This = {Ctrl+i};
Select (Next = 'Down' | Forward = 'Down' | Last = 'Up' | Back = 'Up' | Previous = 'Up') 1..20 Lines = {Home} {Shift+$1_$2};
Add 1..20 (Lines = 'Down' | Line = 'Down' | Pages = 'PgDn' | Page = 'PgDn') = {Home}{Home} {Shift+$2_$1};


Move Line (Up | Down) 1..20  = {Alt+$1_$2};

Comment (That | Line) = {Ctrl+/};
Comment 1..20 Lines = {Home} {Shift+Down_$1} {Ctrl+/};





# --- Navigation commands ----------------------------------------
Line 1..200 = {Ctrl+g} $1 {Enter};
Top = {Ctrl+Home};
Bottom = {Ctrl+End};


# NOTE: add in navigating by delimiter