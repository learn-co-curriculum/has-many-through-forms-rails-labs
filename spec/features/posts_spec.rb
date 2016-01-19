require 'rails_helper'

describe 'Posts', type: 'feature' do

  describe 'new' do

    before :each do
      @cool = Category.create(name: 'Cool')
      visit 'posts/new'
      fill_in('post_title', :with => 'Feeling Awesome')
      fill_in('post_content', :with => 'This is going to be an awesome post!')
    end

    it 'can create a post without a new category' do
      click_button('Create Post')
      expect(page).to have_content('Feeling Awesome')
    end

    it 'can create a post with a previously created category' do
      check('Cool')
      click_button('Create Post')
      expect(page).to have_content('Cool')
    end

    it 'can create a post with a brand new category' do
      fill_in('post_categories_attributes_0_name', :with => 'Funny')
      click_button('Create Post')
      expect(page).to have_content('Funny')
    end

    it 'can create a post with a brand new category and an existing category' do
      check('Cool')
      fill_in('post_categories_attributes_0_name', :with => 'Funny')
      click_button('Create Post')
      expect(page).to have_content('Cool')
      expect(page).to have_content('Funny')
    end
  end
end
