set fish_greeting ""


switch (uname)

case Darwin
    set -gx PYTHONPATH $PYTHONPATH /Applications/Xcode.app/Contents/SharedFrameworks/LLDB.framework/Resources/Python

    set -gx PATH $PATH $HOME/Library/Android/sdk/platform-tools/
    set -gx PATH $PATH $HOME/Library/Android/sdk/build-tools/26.0.1/
    set -gx PATH $PATH $HOME/bin
    set -gx PATH $PATH $HOME/Library/Python/2.7/bin/

    test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

case Linux
    echo This is linux

end

