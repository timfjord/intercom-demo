# Flatten

Go to flatten folder and run

    $ ruby task_test.rb

# TopN

Find N biggest numbers in the file

## Setup

Go the top_n application folder and then execute:

    $ bundle

## Usage

To get 10 biggest numbers run

    $ top_n 10

By default it will use native sorting function and input.txt file from top_n directory
To specify different sorting function(for example bubble), use

    $ top_n -m bubble 10

To specify different input file use

    $ top_n -m bubble -f ~/my_very_big_file.txt 10

## Testing

Go to top_n fodler and run

    $ bundle
    $ cucumber

## Complexity, etc

Currently we can use 2 sorter functions

* bubble sort
* native ruby sort fucntion (quicksort)

Complexity is following

* bubble sort - O(n<sup>2</sup>) - when we double number of elements - time will increase in four times
* quicksort - O(n log n) - when we double number of element - time will increase approximitelly twice

This means that for very big file we should use quicksoty algorythm.

## Room for improvement

1. Implement different sorting method
2. Since we working with big file, maybe make sense divide big file into smaller and process them in parrallel.
Script needs to be slightly updated to support this feature
