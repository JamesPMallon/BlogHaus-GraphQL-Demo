module Types
  class BlogType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :owner, OwnerType, null: true
    field :posts, [PostType], null: true, description: "This blog's posts." do
      argument :id, ID, required: false
    end
  end
end
