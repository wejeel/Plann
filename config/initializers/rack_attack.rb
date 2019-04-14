#utilizng rack attack to mitigate against DDoS attacks

Rack::Attack.safelist_ip("5.6.7.8")

#Blocking a malicious IP using Rack attack gem
Rack::Attack.blocklist_ip("1.2.0.0/16")

#Limiting the request each user makes per time frame
Rack::Attack.throttle("requests by ip", limit: 5, period: 2) do |request|
  request.ip
end