Promotion.find_or_create_by(name: "pepperoni")  do |promo|
  promo.name = "pepperoni"
  promo.start = DateTime.now
end

week = Week.all

for i in 1..week.length
	AcademicWeek.find_or_create_by(position: i) do |aw|
	  aw.promotion_id = Promotion.first.id
	  aw.week_id = i
	end
end

