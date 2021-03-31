require 'git'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have a master branch withall commits in branches feature-3 to feature-3a' do
    expect(@g.branch('master').contains?('feature-3a')).to be true
    expect(@g.branch('master').contains?('feature-3')).to be true
  end

  it 'should have a master branch with all commits in branches feature-1 to feature-1b' do
    expect(@g.branch('master').contains?('feature-1')).to be true
    expect(@g.branch('master').contains?('feature-1a')).to be true
    expect(@g.branch('master').contains?('feature-1b')).to be true
  end

  it 'should have a master branch with all commits in branches feature-2 to feature-2a' do
    expect(@g.branch('master').contains?('feature-2')).to be true
    expect(@g.branch('master').contains?('feature-2a')).to be true
  end
end
