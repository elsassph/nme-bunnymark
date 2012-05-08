**haxe NME performance and features demo**

This project aims to show how NME rocks to target native platforms: iOS/Android/webos/Mac/Win/Linux

 - [Check the blog post][1] for more information and to download binaries.
 - [Check haxe-NME][2] for more information on this technology.

**Features:**

 - batch rendering of hundreds/thousands of elements (bunnies) with position/alpha/rotation/scale transformations
 - image distortion using a triangles grid (background)
 - a jumping pirate

**Building:**

Install and configure NME, preferrably using the all-in-one installer from haxenme.org, 
then run for the target you want (note: 'nme build' will only build):

    nme test build.nmml cpp
    nme test build.nmml android
    nme test build.nmml iphone -simulator

For iOS device testing, you must build & run from Xcode:

    nme update build.nmml ios
    open bin/iphone/MyApplication.xcodeproj

**Credits:**

Initial BunnyMark was [created by Iain Lobb][3], then [ported to haxe-NME by Joshua Granick][4], then enhanced by Philippe Elsass.

[1]: http://philippe.elsass.me/2011/11/nme-ready-for-the-show/
[2]: http://haxenme.org
[3]: http://blog.iainlobb.com/2010/11/display-list-vs-blitting-results.html
[4]: http://www.joshuagranick.com/blog/?p=508
