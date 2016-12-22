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
-- OS Bindings
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
brightDown = function() fastSystemKeyStroke('BRIGHTNESS_DOWN') end
brightUp = function() fastSystemKeyStroke('BRIGHTNESS_UP') end
keyBrightUp = function() fastSystemKeyStroke('ILLUMINATION_UP') end
keyBrightDown = function() fastSystemKeyStroke('ILLUMINATION_DOWN') end
mediaBack = function() fastSystemKeyStroke('PREVIOUS') end
mediaPlay = function() fastSystemKeyStroke('PLAY') end
mediaForward = function() fastSystemKeyStroke('NEXT') end
mute = function() fastSystemKeyStroke('MUTE') end
volumeDown = function() fastSystemKeyStroke('SOUND_DOWN') end
volumeUp = function() fastSystemKeyStroke('SOUND_UP') end
power = function() fastSystemKeyStroke('POWER') end

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
mode:bind('cmd', '1', brightDown)
mode:bind('cmd', '2', brightUp)
mode:bind('cmd', '3', keyBrightDown)
mode:bind('cmd', '4', keyBrightUp)
mode:bind('cmd', '7', mediaBack)
mode:bind('cmd', '8', mediaPlay)
mode:bind('cmd', '9', mediaForward)
mode:bind('cmd', '0', mute)
mode:bind('cmd', '-', volumeDown)
mode:bind('cmd', '=', volumeUp)
mode:bind('cmd', 'delete', power)

--
-- Arrow Keys
--

left = function() fastKeyStroke({''}, 'left') end
down = function() fastKeyStroke({''}, 'down') end
up = function() fastKeyStroke({''}, 'up') end
right = function() fastKeyStroke({''}, 'right') end

mode:bind('', 'h', left, nil, left)
mode:bind('', 'j', down, nil, down)
mode:bind('', 'k', up, nil, up)
mode:bind('', 'l', right, nil, right)

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
upperLeft = function() fastKeyStroke({'ctrl', 'cmd'}, 'left') end
lowerLeft = function() fastKeyStroke({'ctrl', 'cmd', 'shift'}, 'left') end
upperRight = function() fastKeyStroke({'ctrl', 'cmd'}, 'right') end
lowerRight = function() fastKeyStroke({'ctrl', 'cmd', 'shift'}, 'right') end
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