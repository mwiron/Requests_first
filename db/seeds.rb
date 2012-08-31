# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tasks = Task.create ({task: '1', beschreibung: 'hallo ertser Task'})
users = User.create ({username: 'test', password: 'test12', email: 'test@test.de', firma: 'GKV'})
documents = Document.create({document: 'R0001.doc'})
requests = Request.create ({request: 'R00001', beschreibung: 'Erster Request'})#,task_id: 1, user_id: 1, document_id: 1})
