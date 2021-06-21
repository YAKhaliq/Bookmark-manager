require './app'
feature 'test page' do
  scenario 'visit test page' do
    visit '/'
    expect(page).to have_content('Hello World')
  end
end

feature 'view bookmarks' do
  scenario 'list bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.youtube.com')
    expect(page).to have_content('http://www.facebook.com')
  end
end