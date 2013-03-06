#!/usr/bin/env python
# -*- coding: utf-8 -*-

# ideal <idealities@gmail.com>

import web

urls   = (
         '/', DroidBook,
         '/download/\w+/', Download
         )

render = web.template.render('template', base='base')

class DroidBook:
    def GET(self):
        pass

    def POST(self):
        pass

class Download:
    def GET(self):
        pass

app    = web.application(urls, globals())

if __name__ == '__main__':
    app.run()
