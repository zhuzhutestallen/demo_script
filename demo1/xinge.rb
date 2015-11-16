require 'xinge'   
Xinge.configure do |config|    
  config[:android_accessId] = Your android access id    
  config[:android_secretKey] = 'Your secret key xxx'     
  config[:ios_accessId] = Your ios access id    
  config[:ios_secretKey] = 'Your secret key xxx'   
  config[:env] = Rails.env # if you are not in a rails app, you can set it config[:env]='development' or config[:env]='production', it is 'development' default.
end
