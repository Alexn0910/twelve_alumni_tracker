require 'rails_helper'

RSpec.describe 'Tests', type: :feature do

	describe 'index page title' do
		it 'shows the right content' do
		visit members_path
		sleep(10)
		expect(page).to have_content('Twelve Alumni Tracker')
		end
	end
	
	describe 'member table' do
		it 'assigns names properly' do
			member1 = Member.new
			member1.lastName = "Smith"
			sleep(10)
			expect(member1.lastName).to eq("Smith")
		end
	end
		
end
