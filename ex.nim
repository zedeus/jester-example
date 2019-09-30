import asyncdispatch, httpclient, uri
import jester

routes:
  get "/":
    redirect("/index.html")

  get "/video/@url":
    var url = decodeUrl(@"url")

    let client = newAsyncHttpClient()
    var content = await client.getContent(url)
    client.close()

    resp content, "video/mp4"

runForever()
