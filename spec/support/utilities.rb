include ApplicationHelper

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: 'Invalid')
  end
end

RSpec::Matchers.define :be_on_sign_in_page do |message|
  match do |page|
    page.should have_selector('title',  text: full_title('Sign in'))
    page.should have_selector('h1',     text: 'Sign in')
  end
end
