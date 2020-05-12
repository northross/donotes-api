class NoteSerializer < ActiveModel::Serializer
  attributes :id, :subject, :predicate
  belongs_to :user
end
