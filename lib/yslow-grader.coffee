_ = require("underscore")
childProcess = require("child_process")

class YslowGrader
  visit: (url, callback) ->
    child = childProcess.spawn("phantomjs", ["#{__dirname}/../vendor/yslow.js", "-i", "grade", url])
    lastLine = ""
    child.stdout.on "data", (chunk) -> lastLine += chunk.toString()
    child.on "exit", (code, signal) -> callback(raw: JSON.parse(lastLine))

module.exports = YslowGrader

