require "rails_helper"

RSpec.feature "Show article" do
	before do
		@article = Article.create(title: "The first article", body: "Lorem ipsum dolor sit amet, consectetur.")
	end

	scenario "A user show an article" do
		visit "/"
		click_link @article.title

		expect(page).to have_content("The first article")
		expect(page).to have_content("Lorem ipsum dolor sit amet, consectetur.")
		expect(current_path).to eq(article_path(@article))
	end
end