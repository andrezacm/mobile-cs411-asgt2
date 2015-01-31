# mobile-cs411-asgt2

##Description

Given the file "words" with a huge list of words, this program have the objective of find all the anagrams in that list and show:
  * What are the words that form the largest set of anagrams and 
  * How long the program take to calculate the answer in seconds

How it works:

  * Anagram class contain: 
    List of words which are anagrams
    Word code is a group of sorted letters which represents the anagram

  * NSString class category CodeWordExtension contain:
    Method to find the word code form a word

  * Main class contain:
    Main function

The main function open and read the words file, then interact into the file word per word. The program check the word code and insert it into a dictionary wich contain key = code word and value = Anagram object. If the code word is not present in the dictionary, then the program star an Anagram object from that word and insert it into the value of the dictionary with the key as the word code. After complete all the list of words, the program sort the dictionary by the size of Anagrams and show the largest list of anagrams.

##To Run

In the variable named as "file" in the main function must be setted with address and name of the file wich contains the list of words. After that, just run "main.m" from the Xcode or command line.

##Results

1) Largest list of Anagrams:

(
    angor,
    argon,
    goran,
    grano,
    groan,
    nagor,
    Orang,
    orang,
    organ,
    rogan,
    Ronga
)

2) How long to calculate
  
  "1.669240"


::OBS::
This results was taken from a computer with those especifications:
* Processor  2.8 GHz Intel Core i5
* Memory     16 GB 1600 MHz DDR3
