import asyncdispatch, httpclient, uri
import jester

from net import Port

settings:
  port = Port(5000)
  bindAddr = "0.0.0.0"

routes:
  get "/":
    redirect("/index.html")

  get "/video/@url":
    var url = decodeUrl(@"url")

    let client = newAsyncHttpClient()
    var content = await client.getContent(url)
    client.close()

    resp content, "video/mp4"
