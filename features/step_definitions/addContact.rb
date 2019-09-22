require_relative '../../lib/driver/android_driver'
require_relative '../../lib/screens/add_contact_screen'
require 'logger'

Then(/^I Should navigate to Add Contact Screen$/) do
  @logger = Logger.new STDOUT
  @addContactScreen ||= AddContactScreen.new(@android.driver)
  expect(@addContactScreen.verified_screen).to be true, "Navigate to Invalid Screen."
  @logger.info ">> Lauched Add to Contact Screen "
end
