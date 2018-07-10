# Voice commands for Visual Studio Code

include folders.vch;
include letters.vch;


# Commands for Running  Python
Run = {Esc}{Ctrl+Alt+k}{Alt+Ctrl+r};
Clear Terminal = {Ctrl+Alt+k};

# Commands for developing JavaScript (D3, A-Frame, etc.)
Save and Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Ctrl+r};	
Save and Really Reload =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}") {Ctrl+Shift+r};
Save and Run =  {Ctrl+s}  Wait(100) SendSystemKeys("{Alt+Tab}")  {Up}{Enter};


# Configuration and Commands
(Commands | Command Pallet) = {Ctrl+Shift+p};
Keyboard Shortcuts = {Ctrl+k}{Ctrl+s};
(Show | Add) Snippets = {Alt+f} Wait(100)  pss {Enter}  Wait(100) {Down};

# --- Editing commands ----------------------------------------
(Select = 'i' | Copy = 'c' | Cut = 'x') Line = {Ctrl+$1};
Select (Next = 'Down' | Forward = 'Down' | Last = 'Up' | Back = 'Up' | Previous = 'Up') 1..20 Lines = {Home}{Home} {Shift+$1_$2};
Grab 1..20 [Lines] = {Home}{Home} {Shift+Down_$1};
Add 1..20 [Lines] =  {Shift+Down_$1};

Move Line (Up | Down) 1..20  = {Alt+$1_$2};
Comment (That | Line) = {Ctrl+/};
Comment 1..20 Lines = {Home} {Shift+Down_$1} {Ctrl+/};

Replace = {Ctrl+h};
Replace All = {Ctrl+Alt+Enter};

Code Return = '\n';


# --- Navigation commands ----------------------------------------
go_find(search) := {Ctrl+f} $search {Esc} Wait(100) ;
<delimiters> := (Quote = '"' | 'Double Quote' = '"' | 'Single Quote' = "'" | Comma = ',' | 'Equal Sign' = '=' | Equals = '='
| Period = '.' | Dot = '.' | Colon = ':' | 'Semi-Colon' = ';' | Hyphen = '-' | Underscore = '_' | Slash = '/'
| Paren = "(" | "Close Paren" = ")" | Parentheses = "(" | "Open Parenthesis" = "(" | "Close Parentheses" = ")"
| Bracket = '[' | "Close Bracket" = ']' | Brace = '{' | 'Close Brace' = '}' );

Insert (Before = 'Left' | After = 'Right') <delimiters> = go_find($2) {$1};
Insert (Before = 'Left' | After = 'Right') 1..20 <delimiters> = go_find($3)  {F3_$2}  Wait(100) {$1} {Esc};

Fine Alpha <letters> = go_find($1) {Left};
Fine Number 0..9 = go_find($1) {Right};

Line 1..200 = {Ctrl+g} $1 {Enter};
Top = {Ctrl+Home};
Bottom = {Ctrl+End};



# --- Snippets commands  ----------------------------------------

Start ( # HTML commands

# NOTE: I'm not using any of these; they were just from an example from Atom. Get rid of them and replace them with something real
'HTML page' = 'html' | pre = "pre" | 'Comment' = 'comment-html'
| div = 'div'
| 'class example' = 'class-example' # Used in A Taste of D3

# D3 Recipe commands
| 'Recipe Page' = 'recipe-page' | 'Recipe Row' = 'recipe-row'
| 'Recipe Toy' = 'recipe-toy' | Toy = 'recipe-toy'
| 'Bold ID'

) = $1 {Tab};