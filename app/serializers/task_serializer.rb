class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :completed, :order, :created_at, :updated_at
end
