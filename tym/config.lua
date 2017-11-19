config.height = 30
config.width = 100

config.shell = '/bin/fish'
config.font = 'Source han code JP 18'
config.cursor_blink_mode = 'on'
config.cjk_width = 'narrow'

config.color_foreground        = '#ff9944'
config.color_foreground_bold   = '#d0d0d0'
config.color_cursor            = '#d0d0d0'
config.color_cursor_foreground = '#181818'
config.color_background        = '#303030'

config.color_0  = '#303030'
config.color_1  = '#ff9944'
config.color_2  = '#777'
config.color_3  = '#ff9944'
config.color_4	= '#ff9944'
config.color_5	= '#ff9944'
--fish dir
config.color_6	= '#ff9944'
--fish command
config.color_7	= '#789'

keymap = {}

keymap['<Shift><Ctrl>c'] = function()
  tym.copy_clipboard()
end
keymap['<Shift><Ctrl>v'] = function()
  tym.paste_clipboard()
end
keymap['<Shift><Ctrl>r'] = function()
  tym.reload()
end
