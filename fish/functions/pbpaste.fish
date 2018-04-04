# Defined in - @ line 0
function pbpaste --description 'alias pbpaste=xsel --clipboard --output'
	xsel --clipboard --output $argv;
end
