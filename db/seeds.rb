@weight_count = 14
WEIGHT_ARRAY = ['106', '113', '120', '126', '132', '138', '145', '152', '160', '170', '182', '195', '220', '285']
GRADES = ['9th', '10th', '11th', '12th']

List.create(
    name: 'Maple Mountain High School Roster',
    year: '2020-2021'
)

WEIGHT_ARRAY.each do |weight|
    Weight.create(
        weight_class: weight,
        list_id: 1
    )
end 

30.times do
    Athlete.create(
        name: Faker::Name.unique.name,
        grade: GRADES.sample,
        win_loss: "#{rand(5)}#{rand(9)} - #{rand(5)}#{rand(9)}",
        injured: rand(2).even?,
        phone: "(#{rand(9)}#{rand(9)}#{rand(9)}) #{rand(9)}#{rand(9)}#{rand(9)} - #{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}",
        weight_id: rand(14) + 1
    )
end