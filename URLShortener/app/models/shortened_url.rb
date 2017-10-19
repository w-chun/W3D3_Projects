class ShortenedUrl < ApplicationRecord
  validates :long_url, :user_id, presence: true

  def self.random_code
    short_url = nil
    while short_url.nil? || ShortenedUrl.exists?(short_url)
      short_url = SecureRandom.urlsafe_base64
    end
    short_url
  end

  def self.generate_short_url_and_create(user, long_url)
    short_url = ShortenedUrl.random_code
    ShortenedUrl.create!(user_id: user.id, long_url: long_url, short_url: short_url)

  end
end
