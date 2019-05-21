collection = [2, 7, 9]
# def increment(item)
#   item + 1
# end
puts
logger.debug "Iterating over a collection of #{collection.count} items"
puts
collection.each do |item|
  logger.debug "Item before increment is #{item}"
  new_item = item + 1
  logger.debug "Item after increment is #{new_item}"
  puts
end
logger.debug "Done iterating!"
puts
