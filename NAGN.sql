DROP DATABASE IF EXISTS NAGN;
CREATE DATABASE NAGN;

USE NAGN;


Table follows {
  following_user_id integer
  followed_user_id integer
  created_at timestamp 
}

Table users {
  id integer [primary key]
  username varchar
  password varchar
  email varchar UNIQUE
  isAdmin BOOLEAN
  created_at timestamp
}


Table posts {
  id integer [primary key]
  title varchar
  body text [note: 'Content of the post']
  user_id integer
  status varchar
  created_at timestamp
}

Table messages {
  id integer [primary key]
  sender_user_id integer
  reciever_user_id integer
  content varchar
  sent timestamp
  recieved timestamp
  read_status timestamp
}

Table game_list {
  id integer [primary key ]
  user_id integer
  game_id integer
}

Table reviews {
  id integer [primary key]
  user_id integer 
  game_id integer 
  rating integer 
  review_text varchar 
  posted_time timestamp 
}


Ref: posts.user_id > users.id // many-to-one

Ref: users.id < follows.following_user_id

Ref: users.id < follows.followed_user_id
