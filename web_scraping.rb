#Instale a gem utilizando $sudo apt-get install nokogiri, caso ocorra algum erro aconselho instalar $sudo apt-get install ruby-dev, e após tentar novamente 

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')

puts h1.content
