# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  author       :string
#  content      :text
#  datetime     :string
#  description  :text
#  published_at :string
#  title        :string
#  url          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Article < ApplicationRecord
end
