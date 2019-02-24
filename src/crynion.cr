require "kemal"
require "json"
require "uuid"

get "/" do |env|
  env.response.content_type = "application/json"
  {uuid: UUID.new, status: "OK", result "Hello world!"}.to_json
end

Kemal.run
