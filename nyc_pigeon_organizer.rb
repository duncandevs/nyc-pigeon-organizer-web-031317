def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |attr_key, attr_obj|
    attr_obj.each do |attr_instance, attr_instance_names|
      attr_instance_names.each do|name|
        if result.has_key?(name)#if pigeon list already includes Theo(in the case of filling 2nd..n attributes)
          if result[name].has_key?(attr_key)#if theo has attr: ie color already asigned
            result[name][attr_key] << attr_instance.to_s #add the attr instance
          else
            #add a new attribute(ie color) and the instance(ie purple)
            result[name][attr_key] = [attr_instance.to_s]
          end
        else # pigeon list does not include Theo(in the case of filling 1st attr)
          result[name] = {}
          result[name][attr_key] = [attr_instance.to_s]
        end
      end
    end
  end
  result
end
