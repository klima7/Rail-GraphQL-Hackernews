module Mutations
  class DestroyLink < GraphQL::Schema::Mutation
    null false
    argument :id, Integer, required: true

    type Types::LinkType

    def resolve(id:)
      Link.find(id).destroy
    end
  end
end
