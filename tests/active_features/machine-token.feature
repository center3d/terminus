Feature: Machine tokens command
  In order to manage my devices
  As a user
  I need to be able to view and delete my machine tokens.

  Background: I am logged in
    Given I am authenticated

  @vcr machine-tokens_list
  Scenario: List the machine tokens
    When I run "terminus machine-token:list"
    Then I should get:
    """
    [[machine_token_id]]
    """

  @vcr machine-tokens_delete
  Scenario: Delete machine token
    When I run "terminus machine-token:delete [[machine_token_id]]"
    Then I should get:
    """
    Deleted [[machine_token_device]]!
    """
