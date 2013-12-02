Feature: Linking user accounts together
  @cleanUsers @reset
  In order to be able to log into a Camdram account using Facebook/Google/Raven
  I need to be able to link external accounts to Camdram accounts

Scenario: I log into Facebook after logging into a Camdram account
  Given I am logged in as "user1@camdram.net"
  And I log in using "Facebook"
  And I go to "/settings"
  Then I should see "Your Camdram account is linked to the Facebook account test.facebook.user"

Scenario: I log into Google after logging into a Camdram account
  Given I am logged in as "user1@camdram.net"
  And I log in using "Google"
  And I go to "/settings"
  Then I should see "Your Camdram account is linked to the Google account test.google.user"


Scenario: I log into using Raven after logging into a Camdram account
  Given I am logged in as "user1@camdram.net"
  And I log in using "Raven"
  And I press "Link the two accounts together"
  And I go to "/settings"
  Then I should see "Your Camdram account is linked to the Raven account abc123"

Scenario: I log into using Raven after logging into Camdram, but choose to stay logged into Camdram
  Given I am logged in as "user1@camdram.net"
  And I log in using "Raven"
  And I press "old"
  And I go to "/settings"
  Then I should not see "Your Camdram account is linked to the Raven account abc123"

Scenario: I log into using Raven after logging into Camdram, but choose to stay logged into Raven
  Given I am logged in as "user1@camdram.net"
  And I log in using "Raven"
  And I press "new"
  Then I should see "abc123" in the "#account-link" element