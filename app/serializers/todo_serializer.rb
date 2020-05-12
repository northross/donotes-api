class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :due, :item
  belongs_to :user
end
