RoadMap.delete_all

10.times do
    RoadMap.create!(
        title: Faker::ProgrammingLanguage.name,
        description: Faker::ProgrammingLanguage.creator
    )
end
