Feature: Web Browser Automation using Karate

Background:
   * configure driver = { type: 'chrome' }

Scenario: Demonstrate webdriver usage
  Given driver 'https://webdriverjsdemo.github.io'
  When waitFor('#elementappearschild')
  Then assert exists('#elementappearschild').exists
  Given driver 'https://webdriverjsdemo.github.io/leave'
  When click('#homelink')
  And dialog(true)
  And waitFor('#elementappearsparent')
  Then assert exists('#elementappearsparent').exists
