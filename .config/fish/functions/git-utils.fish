# get pretty git log
function glog --description pretty\ git\ logs
	git log --graph --pretty=format:'%C(yellow)%h%Creset %s %C(magenta)(%ar)%Creset %C(bold blue)<%an>%Creset' --abbrev-commit $argv;
end

# get git status
function gst --description get\ git\ status
	git status -sb $argv;
end

# git pull
function gl --description get\ git\ status
	git pull $argv;
end

# git cherrypick
function gcp --description git\ cherrypick
	git cherry-pick $argv;
end

# git checkout 
function gco --description git\ checkout
	git checkout $argv;
end

# gitk windows
function gitk --description gitk\ windows
	gitk.exe $argv;
end
