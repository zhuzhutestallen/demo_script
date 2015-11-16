require './lib/core'

def get_views(params)
    run_command('get', '/views', params)
end

def create_view(params)
    run_command('post', '/views', params)
end

def get_view(id)
    run_command('get', "/views/#{id}")
end

def update_view(id, params)
    run_command('put', "/views/#{id}", params)
end

def delete_view(id)
    run_command('delete', "/views/#{id}")
end
