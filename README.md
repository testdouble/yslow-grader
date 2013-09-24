# yslow-grader

A very simple JavaScript API wrapping the [command-line combo of phantomjs and yslow](http://yslow.org/phantomjs/).

[![Build Status](https://travis-ci.org/testdouble/yslow-grader.png)](https://travis-ci.org/testdouble/yslow-grader)

Right now, it's a dead simple usage. Something like this:

``` javascript
YslowGrader = require("yslow-grader")
yslowGrader = new YslowGrader()
yslowGrader.visit("http://google.com", function(result) {
  console.log(result.raw) //=> the raw results; that is, the JSON YSlow returns
  console.log(result.raw.o) //=> the Overall numeric score of the page.
});
```

Assumptions:

* PhantomJS has to be on your path. A configuration option should be added later.
* The "-i grade" option with default rule configuration is what you want. Configuration should be added later.
* You don't need error handling. Error handling should be added later.

