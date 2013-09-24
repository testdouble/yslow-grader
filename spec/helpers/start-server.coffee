express = require("express")

global.fixtureHtmlPort = process.env.FIXTURE_HTML_PORT || 49157

app = express()
app.use(express.static("#{__dirname}/../fixtures"))
app.listen(global.fixtureHtmlPort)
