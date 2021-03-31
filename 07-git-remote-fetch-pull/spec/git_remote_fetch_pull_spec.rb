require 'git'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have the feature-3 branch' do
    expect(@g.branches.any? { |b| b.name == 'feature-3' }).to be true
  end 

  it 'should have the feature-2a branch' do 
    expect(@g.branches.any? { |b| b.name == 'feature-2a' }).to be true
  end

  it 'should not have other branches from the remote' do
    expect(@g.branches.any? { |b| b.name == 'feature-1' }).to be false
    expect(@g.branches.any? { |b| b.name == 'feature-3a' }).to be false
    expect(@g.branches.any? { |b| b.name == 'feature-2' }).to be false
  end 
end
