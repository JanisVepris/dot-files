#!/bin/bash
#
# Claude Code status line. Claude Code pipes the session as JSON on stdin.
# Line 1: model | context used | 5-hour limit bar and reset time
# Line 2: folder | git worktree | branch, staged (+) and unstaged (~) files

input=$(cat)

purple=$'\033[38;5;141m'
pink=$'\033[38;5;211m'
sky=$'\033[38;5;117m'
yellow=$'\033[38;5;222m'
teal=$'\033[38;5;73m'
leaf=$'\033[38;5;114m'
gray=$'\033[38;5;237m'
orange=$'\033[38;5;214m'
reset=$'\033[0m'
sep=$'\033[38;5;244m | \033[0m'

IFS=$'\x1f' read -r model effort ctx dir worktree limit resets < <(
    jq -r '[
        .model.display_name,
        (.effort.level // ""),
        (.context_window.used_percentage // 0 | floor),
        .workspace.current_dir,
        (.workspace.git_worktree // .worktree.name // ""),
        (.rate_limits.five_hour.used_percentage | if . == null then "" else round end),
        (.rate_limits.five_hour.resets_at // "")
    ] | map(tostring) | join("\u001f")' <<<"$input"
)

# "Opus 5.5 (1M context)" -> "Opus 5.5"
model=${model% (*}

line1="${purple}🤖 ${model}${effort:+:${effort}}${sep}${pink}🧠 ${ctx}%"

# Only Pro and Max plans get rate limits, and only after the first response.
if [[ -n $limit ]]; then
    filled=$(( (limit + 5) / 10 ))
    bar=$leaf
    for (( i = 0; i < 10; i++ )); do
        (( i == filled )) && bar+=$gray
        bar+='█'
    done
    bar+=$reset

    line1+="${sep}${leaf} 5h ${bar}${leaf} ${limit}%"
    [[ -n $resets ]] && line1+=" resets $(date -r "$resets" '+%-I:%M%p')"
fi

line2="${yellow}📁 ${dir##*/}${sep}${teal}🌳 ${worktree:-no worktree}"

git=(git -C "$dir" --no-optional-locks)
if branch=$("${git[@]}" branch --show-current 2>/dev/null); then
    [[ -z $branch ]] && branch=$("${git[@]}" rev-parse --short HEAD 2>/dev/null)

    staged=$(( $("${git[@]}" diff --cached --name-only | wc -l) ))
    unstaged=$(( $("${git[@]}" diff --name-only | wc -l) ))

    changes=''
    (( staged > 0 )) && changes+=" +${staged}"
    (( unstaged > 0 )) && changes+=" ~${unstaged}"

    line2+="${sep}${sky}🌿 ${branch}${changes:+${orange}${changes}}"
fi

printf '%s\n%s\n' "$line1$reset" "$line2$reset"
