require 'git'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have reverted the changes in branches feature-1a and 1b' do
    array = []
    @g.diff('master', 'feature-1').each { |d| array << d }
    expect(array.any? { |d| d.path == 'feature-1a.rb' }).to be false
    expect(array.any? { |d| d.path == 'feature-1b.rb' }).to be false
  end

  it 'should have reverted the changes in branch feature-2a' do
    array = []
    @g.diff('master', 'feature-2').each { |d| array << d }
    expect(array.any? { |d| d.path == 'feature-2a.rb' }).to be false
  end

  it 'should have reverted the changes in branch feature-3a' do
    array = []
    @g.diff('master', 'feature-3').each { |d| array << d }
    expect(array.any? { |d| d.path == 'feature-3a.rb' }).to be false
  end
end
