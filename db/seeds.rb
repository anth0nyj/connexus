User.create(
  [{username: 'spaceghost', password: 'spaceghost'},
  {username: 'gg', password: 'gg'}]
)

Community.create(
  [{name: 'WDIR Spaceghost', num_of_member: 2}]
)

Ledger.create(
  [{user_id: 1, community_id: 1 },
  {user_id: 1, community_id: 2},
  {user_id: 2, community_id: 1},
  {user_id: 2, community_id: 2},
]
)

Post.create(
  [{title: 'Welcome to Spaceghost', content: "View our community's posts here.", user_id: 1, community_id: 1 }]
)

Reply.create(
  [{content: 'Connexus is a place that connects us. (Haha get it?)', post_id: 1, user_id: 2}]
)

p 'Seeded Data'
