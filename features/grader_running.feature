Feature: Rspec Based Graders

  As an Autograder Maintainer
  So that I can be sure that the grader is running properly
  I want the solutions to get a perfect score.

Scenario Outline: Running the local autograder with solution files

  Given The solution file "<submission_file>"
  Given The spec file "<spec_file>"
  When I run the local_autograder with "<grader>"
  Then the score should be <score>

  Examples:
    | submission_file                                             | spec_file                                                           | grader               | score |
    | ../hw/oracle-of-bacon/solutions/lib/oracle_of_bacon.rb      | ../hw/oracle-of-bacon/autograder/spec/connecting_to_service_spec.rb | WeightedRSpecGrader  | 100.0 |
    | ../hw/oracle-of-bacon/solutions/lib/oracle_of_bacon.rb      | ../hw/oracle-of-bacon/autograder/spec/constructing_uri_spec.rb      | WeightedRSpecGrader  | 100.0 |
    | ../hw/oracle-of-bacon/solutions/lib/oracle_of_bacon.rb      | ../hw/oracle-of-bacon/autograder/spec/parsing_xml_spec.rb           | WeightedRSpecGrader  | 100.0 |
    | ../hw/oracle-of-bacon/solutions/lib/oracle_of_bacon.rb      | ../hw/oracle-of-bacon/autograder/spec/valid_instance_spec.rb        | WeightedRSpecGrader  | 100.0 |
    | ../hw/ruby-intro/solutions/lib/part1.rb                     | ../hw/ruby-intro/autograder/part1_spec.rb                           | WeightedRSpecGrader  | 100.0 |
    | ../hw/ruby-intro/solutions/lib/part2.rb                     | ../hw/ruby-intro/autograder/part2_spec.rb                           | WeightedRSpecGrader  | 100.0 |
    | ../hw/ruby-intro/solutions/lib/part3.rb                     | ../hw/ruby-intro/autograder/part3_spec.rb                           | WeightedRSpecGrader  | 100.0 |
    | ../hw/ruby-calisthenics/solutions/lib/attr_accessor_with_history.rb| ../hw/ruby-calisthenics/autograder/attr_accessor_with_history_spec.rb | WeightedRSpecGrader| 100.0 |
    | ../hw/ruby-calisthenics/solutions/lib/dessert.rb            | ../hw/ruby-calisthenics/autograder/dessert_spec.rb                  |WeightedRSpecGrader   | 100.0 |
    | ../hw/ruby-calisthenics/solutions/lib/fun_with_strings.rb   | ../hw/ruby-calisthenics/autograder/fun_with_strings_spec.rb         |WeightedRSpecGrader   | 100.0 |
    | ../hw/ruby-calisthenics/solutions/lib/rock_paper_scissors.rb| ../hw/ruby-calisthenics/autograder/rock_paper_scissors_spec.rb      |WeightedRSpecGrader   | 100.0 |
    | ../hw/rails-intro/solutions/lib/hw2_uri                     | ../hw/rails-intro/autograder/combined_rails_intro_spec.rb           |HerokuRspecGrader     | 100.0 |
    | ../hw/rails-intro/solutions/lib/hw2_uri                     | ../hw/rails-intro/autograder/filter_childrens_movies_spec.rb        |HerokuRspecGrader     | 100.0 |
    | ../hw/rails-intro/solutions/lib/hw2_uri                     | ../hw/rails-intro/autograder/remember_sort_and_filter_settings_spec.rb|HerokuRspecGrader   | 100.0 |
    | ../hw/rails-intro/solutions/lib/hw2_uri                     | ../hw/rails-intro/autograder/sorted_table_spec.rb                   |HerokuRspecGrader     | 100.0 |
    | ../hw/bdd-cucumber/solutions/lib/sol.tar.gz                 |  ../hw/bdd-cucumber/autograder/hw3.yml                              |HW3Grader             | 500.0 |
    | ../hw/bdd-tdd-cycle/solutions/lib/hw4.tar.gz                | hw4.yml                                                             |HW4Grader             | 500.0 |
    | ../hw/refactoring-legacy-code/solutions/lib/hw5_uri         | ../hw/refactoring-legacy-code/autograder/part1_spec.rb              |HW5Grader             | 100.0 |
    | ../hw/refactoring-legacy-code/solutions/lib/hw5_uri         | ../hw/refactoring-legacy-code/autograder/part2_spec.rb              |HW5Grader             | 100.0 |

