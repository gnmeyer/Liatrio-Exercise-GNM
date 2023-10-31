const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  
  let JsonObject  = {
    "message": "My name is Grant Meyer",
    "timestamp": Date(),
  };


  res.send(JsonObject)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
