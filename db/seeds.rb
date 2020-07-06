# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'    

file = File.join(Rails.root, 'tmp', 'CSV Data.csv')
csv_text = File.read(file)

csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|	
ques = Question.where(description: row["Question"]).first_or_initialize
role= Role.where(name: row["Role"]).first_or_initialize
role1= role.save!

mapping = Mapping.where(name:  row["Mapping"]).first_or_initialize
map = mapping.save
ques.role_id=role.id if role1.present?
ques.teaming_stages = row["Teaming Stages"]
ques.appears = row["Appears (Day)"]
ques.frequency =row["Frequency"]
ques.q_type = row["Type"]
ques.required = row ["Required?"]
ques.conditions = row["Conditions"]
ques.mapping = row["mapping"]
ques.save

end