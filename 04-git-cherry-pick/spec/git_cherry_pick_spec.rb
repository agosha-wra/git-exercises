require 'git'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have the feature-1b branch with commits from feature-3a' do
    expect(@g.branches['feature-1b'].gcommit.message).to eq('feature 3a commit')
  end

  it 'should have the feature-1b branch with commits from feature-2' do
    expect(@g.branches['feature-1b'].gcommit.parent.message).to eq('feature 2 commit')
  end

  it 'should have the feature-1b branch not with commits from feature-3' do
    @g.branch('feature-1b').checkout
    array = []
    @g.log.each { |c| array << c }
    expect(array.any? { |c| c.message == 'feature 3 commit' }).to be false
  end
end
