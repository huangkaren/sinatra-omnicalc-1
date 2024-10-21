require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_i
  @the_result = (@the_num ** 2).to_f

  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_i
  @the_result = (@the_num ** 1/2).to_f

  erb(:square_root_results)
end
