# cmi_calc

A new Flutter project.

## Screenshots

![BMI screen for normal](lib\assets\bmi_scrforNormal.jpg)
![result screen for normal](lib\assets\resScrforNormal.jpg)
![BMI screen for obese](https://github.com/OsamaElsaadany/BMICalc/blob/main/lib/assets/bmiScrforObese.jpg?raw=true)
![result screen for obese](lib\assets\resScrforObese.jpg)
![BMI screen for Underweight](lib\assets\bmiScrforUndWe.jpg)
![result screen for Underweight](lib\assets\resScrforUndWei.jpg)

##Topic search Scrollable wedgits in flutter
-SingleChildScrollView uses simple pages
-it is a widget that allows one child (like a Column or Row) to be scrollable.
-It is useful when you have a form or a page with different widgets that may not fit on the screen.
-It always renders all the widgets at once, even if they are not visible on the screen.
-Best for small content that doesn’t change or repeat too much.

-ListView uses long lists
-it is designed for scrollable lists of items.
-Unlike SingleChildScrollView, it can have many children without needing a Column.
-With ListView.builder, items are created only when needed lazy loading which saves memory and improves performance.
-Best for long or dynamic data like messages, products, or any repeated content.

-GridView uses in grids
-it is used when you want to display items in a grid (rows and columns).
-Often used for images, cards, or gallery-like layouts.
