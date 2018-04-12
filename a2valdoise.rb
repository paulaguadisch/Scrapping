def get_all_the_urls_of_val_doise_townhalls

require 'rubygems'
require 'nokogiri'
require 'open-uri'

		page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
       
		links = page.css(".lientxt")
		output = File.new("valdoise.txt", 'w+' )

		links.each{|link| output.write("http://annuaire-des-mairies.com"+link['href']+"\n")}

end

get_all_the_urls_of_val_doise_townhalls

#Création d'un fichier valdoise.txt

