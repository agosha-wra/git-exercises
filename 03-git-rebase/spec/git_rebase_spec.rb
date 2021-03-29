describe 'The Git Repository' do
  it 'should exist' do
    expect { system('git status') }
      .to output(a_string_including('On branch'))
      .to_stdout_from_any_process
  end

  it 'should have a commit' do
    expect { system('git log') }
      .to output(a_string_including('Author'))
      .to_stdout_from_any_process
  end

  it 'should have a branch called feature-2a that includes the commits of feature-1b' do
    expect do
      system('git checkout feature-2a')
      system('git log')
    end
      .to output(a_string_including('feature 1b'))
      .to_stdout_from_any_process
  end

  it 'should have a branch called feature-2a that includes the commits of feature-1a' do
    expect do
      system('git checkout feature-2a')
      system('git log')
    end
      .to output(a_string_including('feature 1a'))
      .to_stdout_from_any_process
  end

  it 'should have a branch called feature-2a that includes the commits of feature-1' do
    expect do
      system('git checkout feature-2a')
      system('git log')
    end
      .to output(a_string_including('feature 1'))
      .to_stdout_from_any_process
  end

  it 'should have a branch called feature-2a that includes the commits of branch feature-2' do
    expect do
      system('git checkout feature-2a')
      system('git branch --no-merged')
    end
      .not_to output(a_string_including('feature-2'))
      .to_stdout_from_any_process
  end
end
