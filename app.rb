require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

# Square 
get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = (@the_num ** 2).to_f

  erb(:square_results)
end

# Square Root
get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = (@the_num ** 0.5)

  erb(:square_root_results)
end

# Payment
get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i 
  @principal = params.fetch("user_principal").to_f
  @payment = ((@apr / (100 * 12))*@principal) / (1 - ((1 + (@apr / (100 * 12))) ** (-@years * 12)))

  erb(:payment_results)
end
