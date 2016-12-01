require 'rails_helper'

RSpec.describe PagesController do
  let(:user) { create :user }

  before { sign_in user }

  describe 'GET #about' do
    subject { get :about }

    it_behaves_like 'template rendering action', :about
  end
end
