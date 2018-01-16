User.create(
  [{username: 'hector', password: 'hector'},
  {username: 'gg', password: 'gg'},
  {username: 'sean', password: 'sean'},
  {username: 'ethan', password: 'ethan'},
  {username: 'anthony', password: 'anthony'}]
)

Community.create(
  [{name: 'ga-wdir', num_of_member: 5},
  {name: 'People who live in Minneapolis', num_of_member: 1},
  {name: 'Dog parents', num_of_member: 3},
  {name: 'East coast homies', num_of_member: 4}]
)

Ledger.create(
  [{user_id: 1, community_id: 1 },
  {user_id: 1, community_id: 2},
  {user_id: 2, community_id: 1},
  {user_id: 2, community_id: 3},
  {user_id: 2, community_id: 4},
  {user_id: 3, community_id: 1},
  {user_id: 3, community_id: 3},
  {user_id: 3, community_id: 4},
  {user_id: 4, community_id: 1},
  {user_id: 4, community_id: 4},
  {user_id: 5, community_id: 1},
  {user_id: 5, community_id: 3},
  {user_id: 5, community_id: 4},]
)

Post.create(
  [{title: 'This is a test post', content: 'Lorem ipsute wjaewoerw thiano waothonew thiwa mkaing up sstuff.. i hope whtis works', user_id: 1, community_id: 1 },
  {title: 'This is a SECOND test post', content: 'Lorem ipsute wjaewoerw thiano waothonew thiwa mkaing up sstuff.. i hope whtis works', user_id: 2, community_id: 1 },
  {title: 'This is a THIRD test post', content: 'Lorem ipsute wjaewoerw thiano waothonew thiwa mkaing up sstuff.. i hope whtis works', user_id: 3, community_id: 1 },
  {title: 'Hector wants a dog', content: 'Lorem ipsute wjaewoerw thiano waothonew thiwa mkaing up sstuff.. i hope whtis works. I WISH I HAD A DOG AS AWESOME AS JOSEFINAs', user_id: 1, community_id: 3 },
  {title: 'gg loves bruce', content: 'Lorem ipsute wjaewoerw thiano waothonew thiwa mkaing up sstuff.. i hope whtis works', user_id: 2, community_id: 3 },
  {title: 'spunky spunky spunky', content: 'Lorem ipsute wjaewoerw thiano waothonew thiwa mkaing up sstuff.. i hope whtis works', user_id: 3, community_id: 3 }]
)

Reply.create(
  [{content: 'Hector, you should get a dog', post_id: 4, user_id: 3},
  {content: 'These are some test replies', post_id: 1, user_id: 1},
  {content: 'I like coding', post_id: 1, user_id: 3},
  {content: 'I like coding too, we should build an app together', post_id: 1, user_id: 5},
  {content: 'Get a room!', post_id: 1, user_id: 4}]
)

p 'Seeded Data'
