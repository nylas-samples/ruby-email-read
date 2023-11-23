# Load gems
require 'dotenv/load'
require 'nylas'

# Initialize Nylas client
nylas = Nylas::Client.new(
	api_key: ENV["V3_TOKEN"]
)

query_params = {
    in: "inbox",
    limit: 5
}

messages, _ = nylas.messages.list(identifier: ENV["GRANT_ID"], query_params: query_params)
messages.each {|message|
    puts "[#{Time.at(message[:date]).strftime("%d/%m/%Y at %H:%M:%S")}] #{message[:subject]}"
}
