When(/^I am on Appimation login page/) do
  visit('/')
  #all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  #  puts el
  #end

  # all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]").each do |el|
  #               # //*[@id="main"]/section[2]/div[1]/section[1]/img

  #   print el.text
  # end

  #homework
  find(:button, "start_button")
  puts "Try now button found"

  find(:button, "signup-b")
  puts "Sign up button found"

  find(:xpath, "//h2[contains(text(), 'Contact Us')]/parent::section")
  puts "Contact us section found"

  find(:xpath, '//*[@id="name"]')
  puts "Name field found"

  find(:xpath, '//*[@id="email"]')
  puts "Email field found"

  find(:xpath, '//*[@id="contactus-message"]')
  puts "Message field found"

  find(:xpath, '//*[@id="contactus-button"]')
  puts "Send button found"

  all(:xpath, '//section[@class="box special features"]/descendant::section').each do |el|
    puts el
  end
end
