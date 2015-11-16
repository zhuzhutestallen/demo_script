require './lib/views'

PARAMS_TEMPLATE = {
    "name" => "view", 
    "dns64s" => [],
    "acls" => [],
    "owners" => ["local.master"],
    "comment" => ""
}

def test_batch_create_view
    10.times do |i|
        params = PARAMS_TEMPLATE
        params["name"] = "view#{i}"
        create_view(params)
    end
end

def test_batch_delete_view
    10.times do |i|
        id = "view#{i}"
        delete_view(id)
    end
end


test_batch_create_view

#test_batch_delete_view

