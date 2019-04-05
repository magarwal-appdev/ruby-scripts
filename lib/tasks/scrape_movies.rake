desc "Scrape IMDb Movies Coming Soon and output CSV"
task :movies => :environment do
    url = "https://www.imdb.com/movies-coming-soon/"
    
    # raw_data = open(url).read 
    # this can only get (not to other CRUD functions so use HTTParty for other things)
    raw_data = HTTParty.get(url)
    # makes requests easier then the built in open method -- this is one the prof built
    
    doc = Nokogiri::HTML(raw_data)
    # ap doc -- you can do this and see class type
    # ap doc.css('h4') 
    # #result of .css method is an array so you have to get fluent with the .each method
    ap doc.css('h4').each do |element|
        ap element.text.strip
    end

    # run this and see what happens
    # when you are figuring out what selector to use -- you don't want to be shutdown
    # repeated access from same IP address is detected and shut down
    # go to chrome - and save the whole page - and you can upload the page back to c9 workspace (lib - imdb - movies coming soon page - has this already)
    filename = Rails.root.join("lib", "imdb", "movies-coming-soon.html")
    page = open(filename)
    # given above is how you will retrieve the locally saved copy of your code
    
    #.csv - when you save an array of hashes
end
