class Blog < ApplicationRecord
  include CommonModule
  # validates_with BlogValidator
  before_create BlogCallback.new
  # test_puts
  # def self.latest(number)
  #   order(created_at: :desc).limit(number)
  # end

  # def title_change
  #   update(title: 'changed')
  # end
  
  # scope :latest, -> (number = 3){order(created_at: :desc).limit(number)}

  # validate :title_more_write
  # validate :content_more_write
  # private
  
  # def title_more_write
  #   if title.length < 3
  #     errors.add(:title, ": 3文字以上書きましょう")
  #   end
  # end
  # def content_more_write
  #   if content.length < 20
  #     errors.add(:content, ": 20文字以上書きましょう")
  #   end
  # end

  # before_create :default_title
  # before_create :default_content
  # private
  # def default_title
  #   self.title = 'タイトルなし' if self.title.blank?
  # end

  # def default_content
  #   self.content = '内容なし' if self.content.blank?
  # end
end
