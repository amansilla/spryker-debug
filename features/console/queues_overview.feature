Feature: Show queues overview

  As a developer
  In order to diagnose any potential problems with queues
    or check the syncronization status
  I want a command which will display the state of all the queues

  Scenario: Show queues status
    Given the queue "foobar" exists
    When I execute console command "debug:queues"
    Then the command should succeed
    And I should see the following output:
    """
    foobar
    """

  Scenario: Show queues by vhost
    Given the queue "foobar" exists
    When I execute console command "debug:queues --vhost=/"
    Then the command should succeed
    And I should see the following output:
    """
    foobar
    """

  Scenario: Filter queues by name
    Given the queue "foobar" exists
    When I execute console command "debug:queues foo"
    Then the command should succeed
    And I should see the following output:
    """
    foobar
    """
