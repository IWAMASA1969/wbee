# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tasks = [
  'JavaScript',
  'Ruby',
  'RubyonRails',
  'Chef',
  'C',
  'Java',
  'PHP',
  'Python',
  'Pascal',
  'Delphi',
  'Basic',
  'Switf',
  'ObjectiveC',
  'Perl',
  'SmallTalk',
  'Erling',
  'Lips',
  'Scala'
]

tasks.each { |task|
  Task.create(task_name: task)
}

wu = WbeeUser.create(
  login_id: 'masaxyz',
  email: 'masaxyz_labo@example.com',
  email_lcase: 'masaxyz_labo@example.com',
  given_name: 'gin',
  family_name: 'iwamasa'
)

wu.wbee_user_passwords.create(
  hashed_password: 'masaxyz',
  start_date: Date.yesterday
)

wu.wbee_user_passwords.create(
  hashed_password: 'masaxyz',
  start_date: Date.tomorrow
)
