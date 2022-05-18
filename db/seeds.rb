
User.create(username: "user1", password_digest: BCrypt::Password.create('password'))

User.create(username: "user2", password_digest: BCrypt::Password.create('password'))

User.create(username: "user3", password_digest: BCrypt::Password.create('password'))

User.create(username: "user4", password_digest: BCrypt::Password.create('password'))

User.create(username: "user5", password_digest: BCrypt::Password.create('password'))

User.create(username: "user6", password_digest: BCrypt::Password.create('password'))

User.create(username: "user7", password_digest: BCrypt::Password.create('password'))

User.create(username: "user8", password_digest: BCrypt::Password.create('password'))

User.create(username: "user9", password_digest: BCrypt::Password.create('password'))

User.create(username: "user10", password_digest: BCrypt::Password.create('password'))

User.create(username: "user11", password_digest: BCrypt::Password.create('password'))

User.create(username: "user12", password_digest: BCrypt::Password.create('password'))

User.create(username: "user13", password_digest: BCrypt::Password.create('password'))

User.create(username: "user14", password_digest: BCrypt::Password.create('password'))

User.create(username: "user15", password_digest: BCrypt::Password.create('password'))


50.times {Post.create(content: Faker::TvShows::AquaTeenHungerForce.quote, user_id: rand(User.count), img: Faker::LoremFlickr.image, tags: Faker::Verb.base)}

30.times {Favorite.create(user_id: rand(User.count), post_id: rand(Post.count))}

60.times {Comment.create(content: Faker::Lorem.paragraph, user_id: rand(User.count), post_id: rand(Post.count))}