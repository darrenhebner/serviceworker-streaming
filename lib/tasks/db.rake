namespace :db do
  desc "Adds fake articles"

  task populate: :environment do
    Article.destroy_all
    100.times do
      Article.create!(
        title: Faker::Lorem.sentence,
        text: Faker::Lorem.paragraph(3)
      )
    end
  end

end
