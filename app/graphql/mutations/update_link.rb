module Mutations
  class UpdateLink < GraphQL::Schema::Mutation
    null false
    argument :id, Integer, required: true
    argument :description, String, required: false
    argument :url, String, required: false

    type Types::LinkType

    def resolve(id:, **attributes)
      Link.find(id).tap do |link|
        link.update!(attributes)
      end
    end
  end
end
