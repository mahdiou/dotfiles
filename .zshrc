# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#


# Flutter & Android
export PATH="$HOME/dev/flutter/bin:$PATH"
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:/usr/local/android-studio/bin:$ANDROID_HOME/build-tools:$ANDROID_HOME/cmdline-tools"



export PATH="$PATH:/opt/nvim/:/home/md208/.local/bin"

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin
. "$HOME/.cargo/env"

export GOPATH=$HOME/go/bin
export PATH=$PATH:$HOME/.local:$GOPATH

# llama.cpp
# closest gpu version currently supported by rocm (gfx1101)
export HSA_OVERRIDE_GFX_VERSION=11.0.1

export LLAMA_PORT=8033
export LLAMA_HOST=0.0.0.0
export LLAMA_BATCH_SIZE=2048
export LLAMA_CTX_SIZE=2048

export PATH="$PATH:$HOME/dev/llama.cpp/build/bin"

alias gptoss="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/gpt-oss-20b-GGUF  --alias 'gptoss' -ngl 60 -b $LLAMA_BATCH_SIZE"
alias qwen3-coder="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF --alias 'Qwen3 Coder 30B A3B' -ngl 60 -b $LLAMA_BATCH_SIZE"
alias qwen3-4b-thk="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/Qwen3-4B-Thinking-2507-GGUF:Q4_K_M --alias 'Qwen 3 4B Thinking' -b $LLAMA_BATCH_SIZE"
alias qwen3-coder="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF --alias 'Qwen3 Coder 30B A3B' -ngl 60 -b $LLAMA_BATCH_SIZE"
alias qwen3-vl="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/Qwen3-VL-30B-A3B-Instruct-GGUF --alias 'Qwen3 VL 30B A3B' -b $LLAMA_BATCH_SIZE"
alias qwen3-vl-2b="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/Qwen3-VL-2B-Instruct-GGUF --alias 'Qwen3 VL 2B' -b $LLAMA_BATCH_SIZE -c $LLAMA_CTX_SIZE"
alias devstral2="llama-server --jinja -c 0 --host $LLAMA_HOST --port $LLAMA_PORT -hf unsloth/Devstral-Small-2-24B-Instruct-2512 -alias 'devstral-small-2' -b $LLAMA_BATCH_SIZE"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
