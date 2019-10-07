# Get today's work
function checkin --description "Get today's work"
	git log --pretty='%h - %s' --after=(date +'%Y-%m-%d' 00:00:00) --author=(git config --get user.email) $argv;
end

function gen-changelog --description "Generate changelog for Catalyst since the given commit sha"
	git log $argv..HEAD --oneline | cut -b 11- | grep -E "^(feat|fix)\\("
end
