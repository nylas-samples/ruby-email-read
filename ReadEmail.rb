# Import your dependencies
require 'dotenv/load'
require 'nylas'

# Initialize your Nylas API client
nylas = Nylas::API.new(
    app_id: ENV["CLIENT_ID"],
    app_secret: ENV["CLIENT_SECRET"],
    access_token: ENV["ACCESS_TOKEN"]
)

# Get the first five emails
messages = nylas.messages.limit(5)
# Read each email
messages.each{ |message|
# Change time to a readable format  
	date = Time.at(message.date)
# Print date and subject of email  
    puts(
        "[#{date}] #{message.subject}"
    )
}
