require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_the_email_of_a_townhal_from_its_webpage

page = Nokogiri::HTML(open("https://annuaire-des-mairies.com/95/vaureal.html"))

output = File.new('vaureal.txt', 'w+') 

page.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |mail|

output.write("L'adresse email de Vauréal est " + mail)

end

end

get_the_email_of_a_townhal_from_its_webpage

#Création d'un fichier vaureal.txt 
