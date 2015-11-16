require './lib/zones'

PARAMS_TEMPLATE = {
    "name" => "com", 
    "zone_type" => "auth", 
    "default_ttl" => 3600,
    "owners" => ["local.master"],
}

def test_batch_create_zone
    10.times do |i|
        params = PARAMS_TEMPLATE
        params["name"] = "zone#{i}"
        create_zone(params)
    end
end

def test_batch_delete_zone
    10.times do |i|
        id = "zone#{i}"
        delete_zone(id)
    end
end


test_batch_create_zone

#test_batch_delete_view

