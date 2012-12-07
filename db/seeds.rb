(1..12).each do |month|
	FactoryGirl.create(:plan, month: "#{Time.now.year}#{format("%02d", month)}")
end
