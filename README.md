Shirts: a Rails sample app
=============

The Houston Ruby Brigade sample Rails 4.1 project. You can:

* go to /admin and create a shirt
* Visit the front page and buy a shirt

** If you like this stuff, hang with us and learn at [The Iron Yard
Academy](http://theironyard.com/academy/) **

Getting Started
-----

0. Clone this repo
0. Create a [Stripe account](https://manage.stripe.com/register)
0. Grab the test API and public keys and enter them locally in
   `config/secrets.yml` where it says "replace_me"
0. run `bundle install`
0. run `rake db:migrate`
0. Go to "http://0.0.0.0:3000/admin"
0. Create a couple of shirts
0. Go to "http://0.0.0.0:3000"
0. Buy a shirt, see the moneys flow in through Stripe

FOR YOU To Implement, Dear Reader
---------------------------------

0. Add a logo
0. Email the business types a receipt of what to ship them

Requirements
------------

* Ruby 2.1
* Rails 4.1

LICENSE
--------
The MIT License (MIT)

Copyright (c) 2014 Jesse Wolgamott

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

