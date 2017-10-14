require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
  
   let(:my_ad) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_num) }

  describe "GET #index" do
    describe "GET new" do
      it "returns http success" do
        get :new
        expect(response).to have_http_status(:success)
      end
 
      it "renders the #new view" do
        get :new
        expect(response).to render_template :new
      end
 
      it "instantiates @advertisement" do
        get :new
        expect(assigns(:advertisement)).not_to be_nil
      end
    end
  end
    describe "Advertisement create" do
      it "increases the number of Advertisement by 1" do
        expect{ advertisement :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_num } } }.to change(Advertisement,:count).by(1)
      end

      it "assigns the new ad to @Advertisement" do
        advertisement :create, params: { advertisement: { title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_num } }
        expect(assigns(:advertisement)).to eq Advertisement.last
      end
 
      it "redirects to the new ad" do
        advertisement :create, params: { advertisement: { title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_num } }
        expect(response).to redirect_to Advertisement.last
      end
    
    it "assigns [my_ad] to @advertisements" do
       get :index
       expect(assigns(:advertisement)).to eq([my_ad])
    end
  end
  
 describe "GET #show" do
   it "returns http success" do
     get :show
     expect(response).to have_http_status(:success)
   end
 end

 describe "GET #new" do
   it "returns http success" do
     get :new
       expect(response).to have_http_status(:success)
   end
 end

 describe "GET #create" do
   it "returns http success" do
     get :create
       expect(response).to have_http_status(:success)
   end
end
  

end
