require './lib/automatizer'

describe Automatizer do

  a = Automatizer.new

  it 'should go on the right directory' do
    allow(a).to receive(:system).with("cd /applications/MAMP/htdocs/store/htdocs/content/themes/DettacheeStoreSB/config")
    expect(`pwd`).to eq "/applications/MAMP/htdocs/store/htdocs/content/themes/DettacheeStoreSB/config"
    a.cd_config
  end

  # it 'should start gulp' do
  #   expect(a).to receive(:system).with("gulp")
  #   a.gulp
  # end
  #
   it 'should open a new tab '  do
     expect(a).to receive(:system).with("osascript -e 'tell application \"iTerm\"' -e 'make new terminal' -e 'tell the first terminal' -e 'activate current session' -e 'launch session \"Default Session\"' -e 'end tell' -e 'end tell' > /dev/null 2>&1")
     a.newtab
   end
  #
  # it 'should go to the project directory' do
  #   expect(a).to receive(:system).with("cd /applications/MAMP/htdocs/store")
  #   a.cd_project
  # end
  #
  # it 'should open the project with vim' do
  #   expect(a).to receive(:system).with("vim .")
  #   a.vim_opener
  # end


end
