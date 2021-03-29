describe 'The Git Repo' do
  it 'should exist' do
    expect { system('git status') }
      .to output(a_string_including('On branch'))
      .to_stdout_from_any_process
  end

  it 'should have a branch called my-feature' do
    expect do
      system('git checkout my-feature')
      system('git branch --show-current')
    end
      .to output(a_string_including('my-feature'))
      .to_stdout_from_any_process
  end

  it 'should have a commit in my-feature' do
    expect do
      system('git checkout my-feature')
      system('git log')
    end
      .to output(a_string_including('Author'))
      .to_stdout_from_any_process
  end
end
