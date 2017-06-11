require 'rails_helper'

describe 'RunTasks' do
  it 'return tasks when user and user run tasks are exists' do
    w = create(:bowhead_and_run_tasks)
    expect(RunTasks.new(w).get_run_tasks.length).to eq(2)
  end

  it 'return length of tasks is 0 when user is exists and user run tasks are not exists' do
    w = create(:bowhead)
    expect(RunTasks.new(w).get_run_tasks.length).to eq(0)
  end
end
