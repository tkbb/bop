# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plan do
    sequence(:name) {|n| "tkbb plan #{n}" }
    #TODO もっとランダムなもの
    sequence(:url) {|n| "http://localhost/#{n}/" }
    month { "#{Time.now.year}#{format("%02d", rand(12)+1)}" }
    days "{date: 10, count: 3}, {date: 25, count: 1}"
    comments "{name: 'vestige', says: 'one'}, {name:, 't2o', says: 'two'}"
    gyms "{name: 'ogikubo', count: 4}, {name: 'akihabara', count: 2}"
  end
end
