require 'pry'
# data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def pigeon_names(data)
  pigeon_names = []

  data.each do |catagory, attributes|
    attributes.each do |attribute, names|
      pigeon_names << names
    end
  end

  pigeon_names.flatten.uniq
end

def pigeon_info(data, pigeon_name)
  pigeon_info = {}
  pigeon_info[:color] = []
  pigeon_info[:gender] = []
  pigeon_info[:lives] = []

  data.each do |catagory, attributes|
    attributes.each do |attribute, names|
      pigeon_info[catagory] << attribute.to_s if names.include?(pigeon_name)
    end
  end

  pigeon_info
 end

def nyc_pigeon_organizer(data)
  new_pigeon_data = {}

  pigeon_names(data).each do |pigeon_name|
    new_pigeon_data[pigeon_name] = pigeon_info(data, pigeon_name)
  end

  new_pigeon_data
end
