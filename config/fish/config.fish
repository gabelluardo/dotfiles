# Source local environment variables file
source ~/.fishenv 

# velociraptor tab-completion
source (vr completions fish | psub)

# start starship prompt
starship init fish | source
