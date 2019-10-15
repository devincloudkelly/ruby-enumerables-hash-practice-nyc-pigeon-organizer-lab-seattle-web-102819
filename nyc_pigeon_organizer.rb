def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][property]
          pigeon_list[name][property].push(attribute)
        end
      end
    end
  end
  

  pigeon_list
end
