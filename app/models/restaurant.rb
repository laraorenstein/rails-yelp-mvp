class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence:true
  validates :address, presence: true
  validates :category, inclusion: CATEGORY

  def destroy_all_reviews
    name == false ? reviews.delete : reviews
  end
end
