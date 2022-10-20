module Mutations
  class CreateLink < BaseMutation
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(description: nil, url: nil)
      pp context[:session][:token]
      pp context[:current_user]
      Link.create!(
        description: description,
        url: url,
        user: context[:current_user]
      )
    end
  end
end
