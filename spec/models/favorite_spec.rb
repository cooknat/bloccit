require 'rails_helper'

RSpec.describe Favorite, type: :model do
<<<<<<< HEAD
   let(:topic) { create(:topic) }
   let(:user) { create(:user) }
   let(:post) { create(:post) }
=======
   let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
   let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
>>>>>>> 845d2504a80b692c708d925d9db4ecc9561d7f0b
   let(:favorite) { Favorite.create!(post: post, user: user) }
 
   it { is_expected.to belong_to(:post) }
   it { is_expected.to belong_to(:user) }
end
