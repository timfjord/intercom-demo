# language: en
Feature: Find top 10 numbers
  In order to find 10 biggest numbers
  As an user
  I should be able to do this

  Scenario: File validation
    When I run `top_n -f not_exists.txt 3`
    Then the stderr should contain "Cannot load file"

  Scenario: Method validation
    Given an empty file named "input.txt"
    When I run `top_n -f input.txt -m not_implemented 3`
    Then the stderr should contain "Expected '--method' to be one of bubble, native; got not_implemented"

  Scenario Outline: Find top 3 numbers with diferent methods
    Given a file named "input.txt" with:
      """
      7
      1
      12
      3
      54
      29
      """
    When I run `top_n -f input.txt -m <method> 3`
    Then the stdout should contain "[54, 29, 12]"

    Examples:
      | method |
      | native |
      | bubble |
