require 'rails_helper'

describe Ticket do
  it{should validate_presence_of :title}
  it{should validate_presence_of :description}
  it{should validate_presence_of :priority}
   before :each do
     @ticket = create(:ticket) 
   end
  
  describe 'title' do
    it 'returns title' do
      expect(@ticket.title).to eq "Ticket"
    end
  end
  
  describe 'description' do
    it 'returns description' do
      expect(@ticket.description).to eq "Some ql words"
    end
  end
  
  describe 'priority' do
    it 'returns priority' do
      expect(@ticket.priority).to eq "priority"
    end
  end
  
  describe 'difficulty' do
    it 'returns difficulty' do
      expect(@ticket.difficulty).to eq "difficulty"
    end
  end
  
  describe 'status' do
    it 'returns status' do
      expect(@ticket.status).to eq "status"
    end
  end
end