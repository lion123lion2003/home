# begin of .cshrc file
#if ($?USER == 0 || $?prompt == 0) exit
if ($?USER == 0) exit
umask 022
set uname=`uname`
if ( $uname == "Linux" ) then
    setenv EDITOR "/bin/vi -u ~/.exrc"
    # dircolors -c
    setenv LS_COLORS 'no=00:fi=00:di=01;34;47:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:'

else
    setenv EDITOR "/bin/vi"
endif
unset uname
setenv MAIL "/var/spool/mail/$USER"
setenv GIT_CONFIG "$cwd/.gitconfig"

if ( $?tcsh ) then
	set prompt = "%n@%m:%/ %B[\!]%b %% "
    bindkey -v
else
	set prompt="$user@`hostname`:`pwd`[\!] % "
endif

# Don't overwrite existing files with the redirection character ">"
#set noclobber

# Don't create core dump files when a program blows up.
limit coredumpsize 0

## Set C shell variables
set path = ( ~/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/X11R6/bin /usr/kerberos/bin )

# Remember my 40 most recent events
set history=1000
set autolist
set addsuffix
set edit
set filec
set correct = cmd
# Tells the shell to ignore .o files when trying to complete filenames # when filec is set.  (This doesn't hold if the .o file is the only # on that could be completed.
set fignore=.o
# Tells "filec" not to cry if it can't complete a file.
#set nobeep
# Notify me when the status of background jobs change set notify
set notify
# Don't let me log out by pressing <ctrl-d> #set ignoreeof
#set ignoreeof
# Set TTY shell variable equal to the current terminal name set TTY=`who am i | awk '{print $2}'`
# Allow others to send messages directly to my terminal mesg y


## Shortcut aliases
if ( -r ~/.alias ) then
    source ~/.alias
endif

# end of .cshrc file

