# Sinatra Todo List API

This is a simple to-do list API built using [Sinatra](https://sinatrarb.com/).

## Getting Started

### Prerequisites 

Make sure you have Ruby and Sinatra installed on your machine.

```bash
gem install sinatra
```
### Installation

- Clone the repository:
```bash
git clone https://github.com/livtavares/to-do-list-in-ruby.git
```

- Run the application:
```bash
ruby todo.rb
```
The API will be accessible at http://localhost:4567.

### Usage
- Get all tasks
```bash
http://localhost:4567/
```

- Add a task
```bash
http://localhost:4567/add_task
```

- Complete a task
```bash
http://localhost:4567/complete_task/{task_index}

#eg: http://localhost:4567/complete_task/0
```

### Contributing
Feel free to contribute to the project by opening issues or submitting pull requests.