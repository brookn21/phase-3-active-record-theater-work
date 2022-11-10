puts 'Clearing the database!'

Audition.destroy_all
Role.destroy_all

puts 'Database cleared!'

puts 'Creating Roles!'

r1 = Role.create(character_name: 'Bob')
r2 = Role.create(character_name: 'Ed')
r3 = Role.create(character_name: 'Eddy')
r4 = Role.create(character_name: 'Joe')

puts 'Roles created!'

puts 'Creating Auditions!'

a1 = Audition.create(actor: 'Bryon Cranston', location: '', phone:0000000000, role: r1)
a2 = Audition.create(actor: 'Brad Pitt',location: '', phone:0000000000, role: r2)
a3 = Audition.create(actor: 'Val Kilmer',location: '', phone:0000000000, role: r3)
a4 = Audition.create(actor: 'Vin Disel',location: '', phone:0000000000, role: r4, hired: true)
a5 = Audition.create(actor: 'Margot Robbie',location: '', phone:0000000000, role: r2)
a6 = Audition.create(actor: 'Jessica Chastain',location: '', phone:0000000000, role: r3, hired: true)
a7 = Audition.create(actor: 'Heath Ledger',location: '', phone:0000000000, role: r3)

puts 'Auditions created!'