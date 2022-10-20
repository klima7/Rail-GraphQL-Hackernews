module Mutations
  class CreateLink < GraphQL::Schema::Mutation
    null false
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url,
      )
    end
  end
end
