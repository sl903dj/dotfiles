zimfw() { source /home/xiaosu/.zim/zimfw.zsh "${@}" }
zmodule() { source /home/xiaosu/.zim/zimfw.zsh "${@}" }
fpath=(/home/xiaosu/.zim/modules/git/functions /home/xiaosu/.zim/modules/utility/functions /home/xiaosu/.zim/modules/duration-info/functions /home/xiaosu/.zim/modules/git-info/functions /home/xiaosu/.zim/modules/zsh-completions/src ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info
source /home/xiaosu/.zim/modules/environment/init.zsh
source /home/xiaosu/.zim/modules/git/init.zsh
source /home/xiaosu/.zim/modules/input/init.zsh
source /home/xiaosu/.zim/modules/termtitle/init.zsh
source /home/xiaosu/.zim/modules/utility/init.zsh
source /home/xiaosu/.zim/modules/duration-info/init.zsh
source /home/xiaosu/.zim/modules/asciiship/asciiship.zsh-theme
source /home/xiaosu/.zim/modules/completion/init.zsh
source /home/xiaosu/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/xiaosu/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/xiaosu/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/xiaosu/.zim/modules/powerlevel10k/powerlevel10k.zsh-theme
