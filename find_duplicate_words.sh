#!/bin/env sh

#******************************************************************************#
#                           find_duplicate_words.sh                            #
#                      Highlight consecutive repeated words                    #
#                  Ex usage: find_duplicate_words.sh input.txt                 #
#******************************************************************************#

FindDuplicateWords() {
  rg --pcre2 -U "\b(\w+)\s+\1\b" "$1"
}

FindDuplicateWords "$1" || echo "No duplicate words found."
