class Url < ApplicationRecord
  validates :long_url, uniqueness: true

  validates :long_url, format: {with: (URI::regexp(['http', 'https'])), message: "entered is invalid url"}
end
