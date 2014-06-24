class Bookmark < ActiveRecord::Base
  validates_presence_of :url, :title
  VALID_URL_REGEX = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
  validates :url, format: {with: VALID_URL_REGEX, message: "only proper URLs"}

end
