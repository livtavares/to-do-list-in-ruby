require 'sinatra'
require 'json'

class TodoList
    def initialize
        @tasks = []
    end

    def add_task(task)
        @tasks << task
    end

    def complete_task(index)
        @tasks[index][:completed] = true
    end

    def to_json
        @tasks.to_json
    end
end
 todo_list = TodoList.new
get '/' do
    todo_list.to_json
end

post '/add_task' do
    request.body.rewind
    task = JSON.parse(request.body.read, symbolize_names: true)
    todo_list.add_task(task)
    todo_list.to_json
end

put '/complete_task/:index' do |index|
    todo_list.complete_task(index.to_i)
    todo_list.to_json
end
