# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bryan = Profile.create(name: "bryan", age: 21, bio:"bryan", image:"https://i.ibb.co/bzTNjYh/derick-mckinney-Qqv-TI5-Edc-unsplash.jpg", gender:"m", interest: "female", user_id: 1)

# bryan.image.attach(
#   io: File.open('./public/images/man.png'),
#   filename: 'man.png',
#   content_type: 'application/png'
# )

# u = User.new
# u.avatar = params[:file] # Assign a file like this, or

# like this

#
# u.save!
# u.avatar.url # => '/url/to/file.png'
# u.avatar.current_path # => 'path/to/file.png'
# u.avatar_identifier # => 'file.png'
