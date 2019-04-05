task :sms do
  require 'twilio-ruby'

  # put your own credentials here
  account_sid = 'AC560eec0b431b58b5e755e3846e2ad8ac'
  auth_token = '87b16ec4d844e4471031596d49a8e5f7'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token
  
  @client.api.account.messages.create(
    from: '+18017846386',
    to: '+14792507640',
    body: 'here is an sms'
  )
end

task :email do
  require 'mailgun-ruby'

  # First, instantiate the Mailgun Client with your API key
  mg_client = Mailgun::Client.new 'key-aa8bce4142b3e520f2829af1774ca8ab'

  # Define your message parameters
  message_params =  { from: 'winter19@teacherplan.org',
                      to:   'megha.agarwal@chicagobooth.edu',
                      subject: 'The Ruby SDK is awesome!',
                      text:    'It is really easy to send a message!'
                    }

  # Send your message through the client
  mg_client.send_message 'mg.teacherplan.org', message_params
end