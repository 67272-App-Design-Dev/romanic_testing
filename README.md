# romanic


### Overview

This was originally a simple gem I wrote a while back called romanic that handles roman numerals and eventually posted online.  I've posted this variation of it on github now because I used it as an example of basic Ruby testing in 67-272 in the spring of 2014.  There are two branches: master (which passes all the tests) and flawed (which ad-hoc testing seems to say is fine, but the full test suite finds a flaw).

### Romanic explained

The romanic module has two sub-modules: *RomanicIntegers* and *RomanicStrings*.  The RomanicIntegers is designed a **to_roman** method to Ruby's Fixnum class.  This would allow you to write `14.to_roman` and get back 'XIV' as a string.  The RomanicStrings is designed a **from_roman** method to Ruby's String class.  This would allow you to write `XIV.to_roman` and get back the number 14.  If the value is out-of-bounds (less than 1, 5000 or greater) or just isn't a romanic string ('bad') then `nil` is returned.

### Getting the gem

If you want to really use the functionality (*not that Roman numeral conversions are a high demand operation, but who knows…*), installing this gem is pretty simple -- just type on the command line:

```  
$ gem install romanic 
```

And add this gem into any other code with:

```  
require 'romanic' 
```


**Qapla'**

*Prof. H*

*February 2014*