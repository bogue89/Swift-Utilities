
Swift Utilities
------------
UIColor - Hexadecimal, RGB, and String init extensions to quicker use.

How to use it:
Initialize a UIColor Object like you would do, but with a valid string representation of hexadecimal color.
	
	/*
		The string is formed by 3 parts, the (red, green, blue, and alpha) represented by 1 or 2 chars case insensitive. (The hash character is optional)
		Examples:
			"#F00" <- r=0xFF, g=0x00, b=0x00, a=0xFF
			"#C442" <- r=0xCC, g=0x44, b=0x44, a=0x22
			"#32D292" <- r=0x32, g=0xD2, b=0x92, a=0xFF
			"a2FC92Fc" <- r=0xA2, g=0xFC, b=0x92, a=0xFC
	*/
	let red = UIColor(string: "#FF0000")
    
    let orange = UIColor(string: "#FF8800")
	
	let transparent_blue = UIColor(string: "00F8")


Features
--------

- Rearrange the bases to hide the incremental
- Pass data in smaller chars representations of values
- Use only the chars you need (very useful for urls)
- Make things your way

Installation
------------

Drag the UIColor.swift file into your project. Now you can initialize UIColor objects in your project.


Contribute
----------

- Issue Tracker: https://github.com/bogue89/Swift-Utilities/issues
- Source Code: https://github.com/bogue89/Swift-Utilities

Support
-------

If you are having issues or doubts, please let me know.

License
-------
The project is licensed under the MIT license.
