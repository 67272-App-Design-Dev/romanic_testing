# romanic


### Overview

This was originally designed as a possible solution to a coding challenge I used to give to students in 67-275: Advanced Ruby Programming.  I've posted it on github now because I used it as an example of basic Ruby testing in 67-272.  There are two branches: master (which passes all the tests) and flawed (which ad-hoc testing seems to say is fine, but the full test suite finds a flaw).

### Purpose

The romanic module has two sub-modules: *RomanicIntegers* and *RomanicStrings*.  The RomanicIntegers is designed a **to_roman** method to Ruby's Fixnum class.  This would allow you to write `14.to_roman` and get back 'XIV' as a string.  The RomanicStrings is designed a **from_roman** method to Ruby's String class.  This would allow you to write `XIV.to_roman` and get back the number 14.  If the value is out-of-bounds (less than 1, 5000 or greater) or just isn't a romanic string ('bad') then `nil` is returned.

**Qapla'**

*Prof. H*

*February 2014*