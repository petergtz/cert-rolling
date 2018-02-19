require 'httpclient'

client_cert_file = 'cert.pem'
client_key_file  = 'key.pem'
ca_cert_file     = '../ca.crt'

client = HTTPClient.new
client.ssl_config.set_client_cert_file(client_cert_file, client_key_file)
client.ssl_config.set_trust_ca(ca_cert_file)

puts client.get("https://127.0.0.1:10443").status

