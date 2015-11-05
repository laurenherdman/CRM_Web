require_relative 'contacts'
require 'sinatra'

# Temporary fake data so that we always find contact with id 1000.
contact = Contact.create("Johnny", "Bravo", "johnny@bitmakerlabs.com", "Rockstar")

get '/' do
	@crm_app_name = "My CRM"
	erb :index
end

get '/contacts' do
	erb :contacts
end

get '/contacts/new' do
	erb :add_contact
end

get '/contacts/delete' do
	erb :delete_contact
end

get '/contacts/modify' do
	erb :modify_contact
end

post '/contacts' do
  Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
  redirect to('/contacts')

end

get "/contacts/1000" do
  @contact = Contact.find(1000)
  erb :show_contact
end