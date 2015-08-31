#!/usr/bin/env ruby
class Automatizer

  def self.run_gulp value
    system("osascript -e 'tell application \"iTerm\"' -e 'tell the first terminal' -e 'activate current session' -e 'launch session \"Default Session\"' -e 'tell the first session' -e 'write text \"cd /applications/MAMP/htdocs/#{value}/htdocs/content/themes/#{value}/config\"' -e 'write text \"gulp\"' -e 'end tell' -e 'end tell' -e 'end tell' > /dev/null 2>&1")
  end

  def self.run_vim value
    system("osascript -e 'tell application \"iTerm\"' -e 'tell the first terminal' -e 'activate current session' -e 'launch session \"Default Session\"' -e 'tell the second session' -e 'write text \"cd /applications/MAMP/htdocs/#{value}/\"' -e 'write text \"vim .\"' -e 'end tell' -e 'end tell' -e 'end tell' > /dev/null 2>&1")
  end

  def self.root_directory value
    system("osascript -e 'tell application \"iTerm\"' -e 'tell the first terminal' -e 'activate current session' -e 'launch session \"Default Session\"' -e 'tell the third session' -e 'write text \"cd /applications/MAMP/htdocs/#{value}/\"' -e 'end tell' -e 'end tell' -e 'end tell' > /dev/null 2>&1")
  end

end
