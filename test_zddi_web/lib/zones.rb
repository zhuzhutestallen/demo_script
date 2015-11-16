require './lib/core'

def get_zones(params)
    run_command('get', '/views/default/zones', params)
end

def create_zone(params)
    run_command('post', '/views/default/zones', params)
end

def get_zones(id)
    run_command('get', "/views/default/zones/#{id}")
end

def update_zones(id, params)
    run_command('put', "/views/default/zones/#{id}", params)
end

def delete_zone(id)
    run_command('delete', "/views/default/zones/#{id}")
end
