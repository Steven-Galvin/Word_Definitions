# Word Definitions

Ruby app to take user inputted words, store them, and also assign user inputted definitions to those words. 4/27/17

### Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Ruby 2.2.0
Bundler

### Installing

Installation is quick and easy! First you can open this link https://pacific-beach-39016.herokuapp.com/ to see the webpage in action live online. Or you can clone this repository to your machine, navigate to the file path in your terminal, and run 'app.rb' by typing '$ruby app.rb'. If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browswr. The standard localhost for Sinatra is port 4567

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/

## Specifications

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
|Returns user inputted words|test_word.word()|"Fish"|
|Returns the id of a word|test_word.id()|1|
|Returns an empty array of words|Words.all()|[]|
|Saves word into array of words|test_word.save() / Words.all()|[test_word]|
|Clears an array of words|Words.clear()|[]|
|Finds a word by it's ID|Words.find(2)|[test_word2]|
|Returns user inputted definitions|test_definition.definition()|"Fish"|
|Returns the id of a definition|test_definition.id()|1|
|Returns an empty array of definitions|Definitions.all()|[]|
|Saves definition into array of definitions|test_definition.save() / Definitions.all()|[test_definition]|
|Clears an array of definitions|Definitions.clear()|[]|
|Finds a definition by it's ID|Definitions.find(2)|[test_definition2]|
|Returns array of definitions within word|test_word.definitions|[]|
|Adds definitions to words|test_word.add_definition(test_definition) / test_word.definitions|[test_definition]|

## Authors

* Steven Galvin

## License

Copyright (c) 2017 Steven Galvin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
