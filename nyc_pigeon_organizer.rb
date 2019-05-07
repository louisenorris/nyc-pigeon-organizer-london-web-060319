def nyc_pigeon_organizer(data)
	organized_pigeons = {}
	data.each do |category, attributes|
		attributes.each do |attribute, pigeon_names|
			pigeon_names.each do |pigeon|
				organized_pigeons[pigeon] ||= {}
				organized_pigeons[pigeon][category] ||= []
				organized_pigeons[pigeon][category] << attribute.to_s
			end
		end
	end
	organized_pigeons
end

