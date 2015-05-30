require 'rails_helper'

describe Project do
  it{should validate_presence_of :title}
   before :each do
     @project = create(:project) 
   end
  
  describe 'title' do
    it 'returns title' do
      expect(@project.title).to eq 'Project'
    end
  end
  
  describe 'description' do
    it 'returns description' do
      expect(@project.description).to eq 'Super ql text'
    end
  end
end 