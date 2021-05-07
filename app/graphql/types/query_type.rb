module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :blogs, [BlogType], null: true
    field :blog, BlogType, null: true do
      argument :id, Integer, required: true
    end

    def blogs
      Blog.all
    end

    def blog(**args)
      Blog.all.find_by(**args)
    end
  end
end
