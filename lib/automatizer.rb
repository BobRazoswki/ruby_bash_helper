#!/usr/bin/env ruby
class Automatizer

  def initialize
     run_gulp
     run_vim
  end

  #def newtab
#    system("osascript -e 'tell application \"iTerm\"'\ -e 'make new terminal' -e 'end tell' > /dev/null 2>&1")
#    puts "Automatizer opened a new tab for you"
#  end

  def run_gulp
    system("osascript -e 'tell application \"iTerm\"' -e 'make new terminal' -e 'tell the first terminal' -e 'activate current session' -e 'launch session \"Default Session\"' -e 'tell the last session' -e 'write text \"cd /applications/MAMP/htdocs/store/htdocs/content/themes/DettacheeStoreSB/config\"' -e 'write text \"gulp\"' -e 'end tell' -e 'end tell' -e 'end tell' > /dev/null 2>&1")
    puts "Switch to config folder"
  end

  def run_vim
    system("osascript -e 'tell application \"iTerm\"' -e 'make new terminal' -e 'tell the first terminal' -e 'activate current session' -e 'launch session \"Default Session\"' -e 'tell the last session' -e 'write text \"cd /applications/MAMP/htdocs/store/\"' -e 'write text \"vim .\"' -e 'end tell' -e 'end tell' -e 'end tell' > /dev/null 2>&1")
  end

end
