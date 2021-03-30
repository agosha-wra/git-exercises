require 'git'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have a branch called my-feature' do
    expect(@g.branches.any? { |b| b.name == 'my-feature' }).to be true
  end

  it 'should have a commit in my-feature' do
    expect(@g.branches['my-feature'].gcommit.size > 0).to be true
  end
end
