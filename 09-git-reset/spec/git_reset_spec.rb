require 'git'
require 'open3'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should have the feature-5 branch reset to the feature-3 commit' do
    expect(@g.diff('feature-5', 'feature-3').size.zero?).to be true
  end

  it 'should have no trace of the original feature-5 files' do
    @g.checkout('feature-5')
    stdout = Open3.capture3("ls")
    expect(stdout.any? { |f| f.instance_of?(String) && f.include?('feature-5.rb') }).to be false
  end

  it 'should have the feature-c branch reset to the feature-a commit' do
    expect(@g.branch('feature-c').contains?('feature-a')).to be true
    expect(@g.branch('feature-c').contains?('feature-b')).to be false
  end

  it 'should have the original feature-c files' do
    @g.checkout('feature-c')
    stdout = Open3.capture3("ls")
    expect(stdout.any? { |f| f.instance_of?(String) && f.include?('feature-c.rb') }).to be true
  end
end
