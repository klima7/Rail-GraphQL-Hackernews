module Types
  class MutationType < Types::BaseObject
    field :create_link, mutation: Mutations::CreateLink
    field :destroy_link, mutation: Mutations::DestroyLink
    field :update_link, mutation: Mutations::UpdateLink
    field :create_user, mutation: Mutations::CreateUser
    field :sign_user, mutation: Mutations::SignInUser
    field :create_vote, mutation: Mutations::CreateVote
  end
end
