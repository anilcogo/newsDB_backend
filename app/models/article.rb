class Article< ApplicationRecord

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :articles
      )

end