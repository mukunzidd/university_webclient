class University
	
	attr_accessor :id, :name, :principal_first_name, :pricinipal_last_name
	
	def initialize(hash)
		@id = hash['id']
		@name = hash['name'],
		@principal_first_name = hash['principal_first_name']	
		@pricinipal_last_name = hash['pricinipal_last_name']		
	end

	def self.all
		university_hash = Unirest.get("#{ENV['DOMAIN']}/universities.json").body
		universities = []
		university_hash.each do |university|
			universities << University.new(university)
		end

		return universities

	end

	def self.find(id)
		university_hash = Unirest.get("#{ENV['DOMAIN']}/universities/#{id}.json", headers:{ "Accept" => "application/json", "Authorization" => "Token token=#{ENV['API_KEY']}", "User-Email" => ENV['API_EMAIL']}).body
    @university = University.new(university_hash)
	end

end