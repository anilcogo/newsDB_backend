class User< ApplicationRecord


    has_many(
        :articles,
        class_name: 'Article',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
      )

end