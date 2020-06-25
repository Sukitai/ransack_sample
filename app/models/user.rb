class User < ApplicationRecord
  attr_accessor :search_name, :search_age, :search_sex

  enum sex: { man: 1, woman: 2 }

  def search
    User.ransack(name_eq: @search_name, age_eq: @search_age, sex_eq: @search_sex).result
  end
end
