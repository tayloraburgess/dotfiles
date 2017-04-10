--
-- Variables
--

hyper = 0x4F
unused = {
  'a',
  'c',
  'f',
  'd',
  'g',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'v',
  'w',
  'x',
  'y',
  'z',
  ',',
  '.',
  '/',
  ';',
  '[',
  ']',
  '-',
  '=',
  '\\',
  '\''
}

--
-- Faster Keystrokes
--

fastKeyStroke = function(modifiers, character)
  local event = require("hs.eventtap").event
  event.newKeyEvent(modifiers, string.lower(character), true):post()
  event.newKeyEvent(modifiers, string.lower(character), false):post()
end

fastSystemKeyStroke = function(key)
  local event = require("hs.eventtap").event
  event.newSystemKeyEvent(key, true):post()
  event.newSystemKeyEvent(key, false):post()
end

--
-- Universal Bindings
--

hs.hotkey.bind({'ctrl'}, 'l', function() fastKeyStroke({''}, 'escape') end)

--
-- Create Mode
--

mode = hs.hotkey.modal.new('', hyper)

--
-- Mode Exit Bindings
--

mode:bind('', hyper, function() mode:exit() end)
mode:bind('', 'i', function() mode:exit() end)

--
-- Deactivated Key Bindings
--

for idx,val in ipairs(unused) do
  mode:bind('', val, function() end)
end

--
-- App/Space Switching
--

appFocus = function() fastKeyStroke({'cmd'}, 'tab') end
space1 = function() fastKeyStroke({'ctrl'}, '1') end
space2 = function() fastKeyStroke({'ctrl'}, '2') end
space3 = function() fastKeyStroke({'ctrl'}, '3') end
space4 = function() fastKeyStroke({'ctrl'}, '4') end
space5 = function() fastKeyStroke({'ctrl'}, '5') end
space6 = function() fastKeyStroke({'ctrl'}, '6') end
space7 = function() fastKeyStroke({'ctrl'}, '7') end
space8 = function() fastKeyStroke({'ctrl'}, '8') end
space9 = function() fastKeyStroke({'ctrl'}, '9') end
expose = function() fastKeyStroke({'ctrl'}, 'up') end

mode:bind('', 'tab', appFocus)
mode:bind('', '1', space1)
mode:bind('', '2', space2)
mode:bind('', '3', space3)
mode:bind('', '4', space4)
mode:bind('', '5', space5)
mode:bind('', '6', space6)
mode:bind('', '7', space7)
mode:bind('', '8', space8)
mode:bind('', '9', space9)
mode:bind('', '`', expose)

--
-- Arrow Keys
--

left = function() fastKeyStroke({''}, 'left') end
down = function() fastKeyStroke({''}, 'down') end
up = function() fastKeyStroke({''}, 'up') end
right = function() fastKeyStroke({''}, 'right') end
ctrlLeft = function() fastKeyStroke({'ctrl'}, 'left') end
ctrlDown = function() fastKeyStroke({'ctrl'}, 'down') end
ctrlUp = function() fastKeyStroke({'ctrl'}, 'up') end
ctrlRight = function() fastKeyStroke({'ctrl'}, 'right') end
cmdLeft = function() fastKeyStroke({'cmd'}, 'left') end
cmdDown = function() fastKeyStroke({'cmd'}, 'down') end
cmdUp = function() fastKeyStroke({'cmd'}, 'up') end
cmdRight = function() fastKeyStroke({'cmd'}, 'right') end
altLeft = function() fastKeyStroke({'alt'}, 'left') end
altDown = function() fastKeyStroke({'alt'}, 'down') end
altUp = function() fastKeyStroke({'alt'}, 'up') end
altRight = function() fastKeyStroke({'alt'}, 'right') end

mode:bind('', 'h', left, nil, left)
mode:bind('', 'j', down, nil, down)
mode:bind('', 'k', up, nil, up)
mode:bind('', 'l', right, nil, right)
mode:bind('ctrl', 'h', ctrlLeft, nil, ctrlLeft)
mode:bind('ctrl', 'j', ctrlDown, nil, ctrlDown)
mode:bind('ctrl', 'k', ctrlUp, nil, ctrlUp)
mode:bind('ctrl', 'l', ctrlRight, nil, ctrlRight)
mode:bind('cmd', 'h', cmdLeft, nil, cmdLeft)
mode:bind('cmd', 'j', cmdDown, nil, cmdDown)
mode:bind('cmd', 'k', cmdUp, nil, cmdUp)
mode:bind('cmd', 'l', cmdRight, nil, cmdRight)
mode:bind('alt', 'h', altLeft, nil, altLeft)
mode:bind('alt', 'j', altDown, nil, altDown)
mode:bind('alt', 'k', altUp, nil, altUp)
mode:bind('alt', 'l', altRight, nil, altRight)

--
-- Text Nav
--

wordStart = function() fastKeyStroke({'alt'}, 'left') end
wordEnd = function() fastKeyStroke({'alt'}, 'right') end
lineStart = function() fastKeyStroke({'cmd'}, 'left') end
lineEnd = function() fastKeyStroke({'cmd'}, 'right') end

mode:bind('', 'b', wordStart, nil, wordStart)
mode:bind('', 'e', wordEnd, nil, wordEnd)
mode:bind('shift', '6', lineStart)
mode:bind('shift', '4', lineEnd)

--
-- Text Manipulation
--

delete = function() fastKeyStroke({''}, 'forwarddelete') end
copy = function() fastKeyStroke({'cmd'}, 'c') end
paste = function() fastKeyStroke({'cmd'}, 'v') end
undo = function() fastKeyStroke({'cmd'}, 'z') end
mode:bind('', 'x', delete, nil, delete)
mode:bind('', 'y', copy)
mode:bind('shift', 'p', paste)
mode:bind('', 'u', undo)

--
-- Spectacle
--

center = function() fastKeyStroke({'alt', 'cmd'}, 'c') end
fullscreen = function() fastKeyStroke({'alt', 'cmd'}, 'f') end
upperLeft = function() fastKeyStroke({'ctrl', 'cmd', 'shift'}, 'q') end
lowerLeft = function() fastKeyStroke({'ctrl', 'cmd', 'shift'}, 'a') end
upperRight = function() fastKeyStroke({'ctrl', 'cmd', 'shift'}, 'w') end
lowerRight = function() fastKeyStroke({'ctrl', 'cmd', 'shift'}, 's') end
leftHalf = function() fastKeyStroke({'alt', 'cmd'}, ',') end
rightHalf = function() fastKeyStroke({'alt', 'cmd'}, '.') end
topHalf = function() fastKeyStroke({'alt', 'cmd'}, 'up') end
bottomHalf = function() fastKeyStroke({'alt', 'cmd'}, 'down') end
larger = function() fastKeyStroke({'ctrl', 'cmd', 'alt'}, '.') end
smaller = function() fastKeyStroke({'ctrl', 'cmd', 'alt'}, ',') end

mode:bind('ctrl', 'c', center)
mode:bind('ctrl', 'f', fullscreen)
mode:bind('ctrl', 'q', upperLeft)
mode:bind('ctrl', 'a', lowerLeft)
mode:bind('ctrl', 'w', upperRight)
mode:bind('ctrl', 's', lowerRight)
mode:bind('ctrl', 'c', center)
mode:bind('ctrl', '[', leftHalf)
mode:bind('ctrl', ']', rightHalf)
mode:bind('ctrl', '=', topHalf)
mode:bind('ctrl', '-', bottomHalf)
mode:bind('ctrl', '.', larger, nil, larger)
mode:bind('ctrl', ',', smaller, nil, smaller)
