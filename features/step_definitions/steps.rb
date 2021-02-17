require_relative '../pages/homePage.rb'

home = HomePage.new

Given('user is on the home page') do
  sleep 20
  home.verifyHomePage()
end

And('user enter {string} code') do |user|
  home.sendUser(user)
end

And('user enter {string}') do |pword|
  home.sendPin(pword)
end

And('user clicks login') do
  home.ClickLogin()
end

And('user checks out book') do
  home.clickAccessibility("Navigate up")
  home.clickCover()
  home.clickAccessibility("Get Button")
end

And('user cancels download') do 
  home.clickAccessibility("Cancel download button")
end

And('user reads book') do
  home.clickAccessibility("Read button")
end

And('user returns book') do
  home.clickAccessibility("Books")
  home.clickId("org.nypl.labs.OpenEbooks.app:id/bookCellIdle")
  home.clickAccessibility("Return Now Button")
end

And('user browses specific category') do
  home.browseSpecificCategory()
end

And('user browses to settings') do
  home.clickAccessibility("Settings")
end

And('user logs out') do
  home.logout()
end

And('user scrolls to description') do
  home.scrollToDescription()
end

And('user views related books') do
  home.clickId("org.nypl.labs.OpenEbooks.app:id/bookDetailRelated")
end

And('select book to check out') do
  home.clickLabel("High School")
  home.clickCover()
end

Then('user access book details') do 
  home.accessBookDetail("The Autobiography and Other Writings, ebook, by Benjamin Franklin")
end

Then('verify ebook') do
  home.verifyEbook()
end

And('user clicks the log in with clever button') do
  home.clickLogClever()
end

And('user opens catalog') do
  home.openCatalog()
end

Then('open list view') do
  home.openListView()
end

And('user scrolls through list') do
  home.scrollToXpath("Firestorm, ebook, by Klass, David","Book of a Thousand Days, ebook, by Hale, Shannon")
 end

And('user scrolls to category') do 
  home.clickLabel("High School")
  home.scrollToXpath("New Arrivals","Staff Picks")
end