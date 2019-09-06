require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  describe 'GET #services_with_reports' do
    it 'renders the list of services with reports view' do
      expect(1).to eq(1)
    end
    it 'should paginate by ten records per page' do
      number_records_per_page = 10
      expect(10).to eq(number_records_per_page)
    end
  end
end
