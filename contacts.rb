
 class Contact
 	attr_reader :id
 	attr_accessor :first_name, :last_name, :email, :notes

 	@@contacts = []
 	@@id = 1000

 	def initialize(first_name, last_name, email, notes)
 		@id = @@id
 		@first_name = first_name
 		@last_name = last_name
 		@email = email
 		@notes	= notes

 		@@id += 1
 	end


	def self.create(first_name, last_name, email, notes)
		new_contact = new(first_name, last_name, email, notes)
		@@contacts << new_contact
	end

	def self.all
		@@contacts
	end

	def self.find(contact_id)
    @@contacts.find { |contact| contact.id == contact_id }
  end
 end