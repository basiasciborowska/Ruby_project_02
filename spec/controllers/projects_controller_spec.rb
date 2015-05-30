require 'rails_helper'


describe ProjectsController do 
  before :each do
    @project = create(:project)
  end
  
  describe 'index' do
    it 'return projects' do
      get :index    
      expect(response).to have_http_status(:success)
      expect(assigns(:projects).length).to eq 1
    end
  end
end