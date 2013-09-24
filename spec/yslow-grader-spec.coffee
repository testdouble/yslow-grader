YslowGrader = require("./../lib/yslow-grader")

describe "YslowGrader", ->
  Given -> @subject = new YslowGrader
  When (done) -> @subject.visit "http://localhost:#{global.fixtureHtmlPort}/yslow.org.html", (result) =>
    @result = result
    done()
  Then -> @result.raw.o > 80
  And -> @result.raw.o < 95
