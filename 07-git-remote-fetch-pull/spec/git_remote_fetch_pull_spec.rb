require 'git'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have a feature-2 branch that is the same as origin/feature-2' do
    expect(@g.branches.any? { |b| b.name == 'feature-2' }).to be true
    expect(@g.diff('feature-2', 'origin/feature-2').size == 0).to be true
  end

  it 'should have a feature-3 branch that is the same as origin/feature-3' do
    expect(@g.branches.any? { |b| b.name == 'feature-3' }).to be true
    expect(@g.diff('feature-3', 'origin/feature-3').size == 0).to be true
  end

  it 'should not have a feature-1 branch' do
    expect(@g.branches.any? { |b| b.name == 'feature-1' }).to be false
  end

  it 'should have a feature-4 branch' do
    expect(@g.branches.any? { |b| b.name == 'feature-4' }).to be true
  end

  it 'should have the changes in feature-4 pushed to origin/feature-4' do
    expect(@g.diff('feature-4', 'origin/feature-4').size == 0).to be true
  end
end
