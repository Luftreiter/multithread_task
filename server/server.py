#!/usr/bin/env python3
"""
Very simple HTTP server in python.
Usage::
    ./dummy-web-server.py [<port>]
Send a GET request::
    curl http://localhost
Send a HEAD request::
    curl -I http://localhost
Send a POST request::
    curl -d "foo=bar&bin=baz" http://localhost
"""
from http.server import BaseHTTPRequestHandler, HTTPServer
#import SocketServer
import io
import struct
class S(BaseHTTPRequestHandler):
    def _set_headers(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
    
    def read_in_chunks(self, file_object, chunk_size=1024):
        while True:
            data = file_object.read(chunk_size)
            if not data:
                break
            yield data
    
    
    def do_GET(self):
        self._set_headers()
        #self.wfile.write("<html><body><h1>hi!</h1></body></html>")
        try:
            f=open("data.bin","rb")
           
           
            for piece in self.read_in_chunks(f):
                self.wfile.write(piece)
            #use this line for debug data floats
            #chunk=f.read(8)# in bytes
            #print(struct.unpack('2f', chunk) )
            
        except IOError:
            print("File not found or path is incorrect")
        finally:
            print("exit")

    def do_HEAD(self):
        self._set_headers()
        
    def do_POST(self):
        # Doesn't do anything with posted data
        # <--- Gets the size of data
        content_length = int(self.headers['Content-Length']) 
        post_data = self.rfile.read(content_length) # <--- Gets the data itself
        print (post_data) # <-- Print post data
        self._set_headers()
        
def run(server_class=HTTPServer, handler_class=S, port=8000):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print ('Starting server...')
    httpd.serve_forever()

if __name__ == "__main__":
    from sys import argv

    if len(argv) == 2:
        run(port=int(argv[1]))
    else:
        run()
