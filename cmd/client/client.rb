require 'httpclient'

client_cert_file = 'cert.pem'
client_key_file  = 'key.pem'
ca_cert_file     = '../ca.crt'

client = HTTPClient.new
client.ssl_config.set_client_cert_file(client_cert_file, client_key_file)
client.ssl_config.set_trust_ca(ca_cert_file)

begin
  puts client.get("https://127.0.0.1:10443")
rescue => e
  puts e
  puts e.methods - Object.new.methods
  puts e.message
  puts e.cause
end

