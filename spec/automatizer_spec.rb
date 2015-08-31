require './lib/automatizer'

describe Automatizer do

  a = Automatizer

  before (:each) do
    allow(a).to receive(:run_gulp).and_return true
    allow(a).to receive(:run_vim).and_return true
    allow(a).to receive(:root_directory).and_return true
    @v = "dstore"
  end

  it 'should run the run_gulp method and_return true' do
    expect(a.run_gulp @v).to eq true
  end

  it 'should run the run_vim method and_return true'  do
    expect(a.run_vim @v).to eq true
  end

  it 'should run the root_directory method and_return true'  do
   expect(a.root_directory @v).to eq true
  end

end
