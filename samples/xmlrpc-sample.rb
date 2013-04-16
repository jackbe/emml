require 'xmlrpc/client'

client = XMLRPC::Client.new("xmlrpc.com", "/RPC2", 80)

$r =  client.call("currentTime.getCurrentTime")

$stringResult = "#{$r.year}:#{$r.month}:#{$r.day} #{$r.hour}:#{$r.min}:#{$r.sec}"

p $stringResult
