set fish_greeting ""


switch (uname)

case Darwin
    set -gx PYTHONPATH $PYTHONPATH /Applications/Xcode.app/Contents/SharedFrameworks/LLDB.framework/Resources/Python

    set -gx PATH $PATH $HOME/Library/Android/sdk/platform-tools/
    set -gx PATH $PATH $HOME/Library/Android/sdk/build-tools/26.0.1/
    set -gx PATH $PATH $HOME/Library/Android/sdk/ndk-bundle/
    set -gx PATH $PATH $HOME/bin
    set -gx PATH $PATH $HOME/Library/Python/2.7/bin/
    set -gx PATH $PATH $HOME/workspace/chromeos/depot_tools/

    set -gx ANDROID_HOME $HOME/Library/Android/sdk
    set -gx JAVA_HOME (/usr/libexec/java_home)

    test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

case Linux
    echo This is linux

end

