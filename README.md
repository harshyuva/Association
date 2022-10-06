# Associationscop

I always wondered, why there was no functionality to use associations not only on ActiveRecord objects but on scopes as well. When I have

current_user.topics # => #<ActiveRecord::Relation [...]>
why can't I use the same construction on a collection of users like

current_user.friends.topics # => #<ActiveRecord::Relation [...]>
and retrieve the collection of topics, my friends posted? Instead I wrote weird scopes like

class Topic < ApplicationRecord
  belongs_to :user
  scope :of_users, -> (users) { joins(:user).where(users: users) }
end
over and over again across all of my models to write something like Topic.of_users(current_user.friends) when I wanted to write current_user.friends.topics instead. And belongs_to is the easiest part.

When you have this problem, the AssociationScope gem is for you!
