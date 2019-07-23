class DvdSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :starring, :synopsis
  has_one :user
end
