== Dynamic Menu for Garmin CIQ

DMenu.mc is an implementation of a dynamic menu where the menu ordering and length can be changed and an optional value line can be shown below the menu item name.  

It is similar to how the Alarm Clock menu (menu -> Clock -> Alarm Clock) works. The only feature not supported is showing a status icon.

This has only been tested on a fenix3 and on the simulator (for a fenix3), although I don't think there is any device specific code.

One thing I noticed in the simulator is if the ANIM_TIME constant is made 0.2 then there are drawing errors but on the actual watch there are none.

A rather trivial app is included to demonstrate its use.

== LICENCE

Licence MIT

Copyright (c) 2016 Dave Baldwin <dave@briarside.co.uk>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
