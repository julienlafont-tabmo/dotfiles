# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Theme
Theme "robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
Plugin "pbcopy"
Plugin "theme"
Plugin "balias"
Plugin "jump"

eval (python -m virtualfish auto_activation compat_aliases)

set -x JAVA_OPTS "-Xms1g -Xmx3g"

set PATH $PATH /home/julien/bin
#set PATH $PATH /home/julien/bin/aws
set PATH $PATH /home/julien/work/tools/nodejs/node-v0.12.0/bin
set PATH $PATH /home/julien/work/projects/tabmo-tools
set PATH $PATH /home/julien/work/tools/wkhtmltox/bin
set PATH $PATH /home/julien/work/projects/tabmo-tools

# Load custom aliases
source ~/.config/.alias

# Configure touchpad
synclient PalmDetect=1 TapButton1=0

# GO
#set GOROOT /home/julien/work/tools/golang/current
#set PATH $PATH $GOROOT/bin

set -x TABMO_PROJECTS /home/julien/work/projects
set -x EDITOR /usr/bin/nano
set -x JAVA_HOME /usr/lib/jvm/java-8-oracle
set -x M2_HOME /usr/local/apache-maven-3.3.3
