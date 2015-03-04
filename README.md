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

By default it will use native sorting function
To specify different sorting function(for example bubble), use

    $ top_n -m bubble 10

To specify different input file use

    $ top_n -m bubble -f ~/my_very_big_file.txt 10

## Complexity, etc

Currently we can use 2 sorter functions

* bubble sort
* native ruby sort fucntion (quicksort)

Complexity is following

* bubble sort - O(n^2) - when we double number of elements - time will increase in four times
* quicksort - O(n log n) - when we double number of element - time will increase approximitelly twice

This means that for very big file we should use quicksoty algorythm.

## Testing

Go to top_n fodler and run

    $ bundle
    $ cucumber

