require 'git'
require 'net/http'
require 'json'

describe 'The Git Repository' do
  before(:all) do
    @g = Git.open('./git-exercises/')
  end

  it 'should exist' do
    expect(@g).to be_instance_of(Git::Base)
  end

  it 'should have a my-feature branch' do
    expect(@g.branches.any? { |b| b.name == 'my-feature' }).to be true
  end

  it 'should have the changes in my-feature pushed to origin/my-feature' do
    expect(@g.diff('my-feature', 'origin/my-feature').size == 0).to be true
  end

  it 'should have a pull request for my-feature in the remote' do
    url = URI('https://api.github.com/repos/agosha-wra/git-exercises/pulls')
    pulls = JSON.parse(Net::HTTP.get(url))
    expect(pulls.any? { |x| x['head']['ref'] == 'my-feature' }).to be true
  end
end
