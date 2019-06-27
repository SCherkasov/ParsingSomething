'use strict';

const http = require('http');
const path = require('path');
const fs = require('fs');

const radioChannels = [
  {
    name: 'BLACK STAR RADIO',
    url: 'http://blackstarradio.hostingradio.ru:8024/blackstarradio128.mp3?5ba7f47b'
  },
  {
    name: 'Sax4Love',
    url: 'http://sc-sax4ever.1.fm:10148/?2fa5'
  }
];

const routing = {
  '/': radioChannels,
  '/img/*': (client, par) => 'parameter=' + par[0] 
};

const types = {
  object: ([data], callback) => callback(JSON.stringify(data)),
  undefined: (args, callback) => callback('not found'),
  function: ([fn, req, res], callback) => {
    if (fn.length === 3) fn(req, res, callback);
      else callback(JSON.stringify(fn(req, res)));
  },
};

const matching = [];
for (const key in routing) {
    if (key.includes('*')) {
	const rx = new RegExp(key.replace('*', '(.*)'));
	const route = routing[key];
	matching.push([rx, route]);
	delete routing[key];
    }
}

const router = client => {
  let par;
  let route = routing[client.req.url];
  if (!route) {
    for (let i = 0; i < matching.length; i++) {
      const rx = matching[i];
      par = client.req.url.match(rx[0]);
      if (par) {
        par.shift();
	route = rx[1];
	break;
      }
    }
  }
  const type = typeof route;
  const renderer = types[type];
  return renderer(route, par, client);
};

http.createServer((req, res) => {
  res.end(router({req, res}) + '');
}).listen(8000);

/*



var dir = path.join(__dirname, 'img');

var mime = {
    html: 'text/html',
    txt: 'text/plain',
    css: 'text/css',
    gif: 'image/gif',
    jpg: 'image/jpeg',
    png: 'image/png',
    svg: 'image/svg+xml',
    js: 'application/javascript'
};

const hostname = '127.0.0.1';
const port = 3000;

radioChannels = [
  {
    name: 'BLACK STAR RADIO',
    url: 'http://blackstarradio.hostingradio.ru:8024/blackstarradio128.mp3?5ba7f47b'
  },
  {
    name: 'Sax4Love',
    url: 'http://sc-sax4ever.1.fm:10148/?2fa5'
  }   
];

const server = http.createServer((req, res) => {
  var reqpath = req.url.toString().split('?')[0];
  if (req.method !== 'GET') {
    res.statusCode = 501;
    res.setHeader('Content-Type', 'text/plain');
    return res.end('Method not implemented');
  }

  console.log({reqURL: req.url.toString()});

  
  
  

  

  

  

  var file = path.join(dir, reqpath.replace(/\/$/, '/index.html'));
  if (file.indexOf(dir + path.sep) !== 0) {
      res.statusCode = 403;
      res.setHeader('Content-Type', 'text/plain');
      return res.end('Forbidden');
  }
  var type = mime[path.extname(file).slice(1)] || 'text/plain';
  var s = fs.createReadStream(file);
  s.on('open', function () {
	  res.setHeader('Content-Type', type);
	  s.pipe(res);
      });
  s.on('error', function () {
	  res.setHeader('Content-Type', 'text/plain');
	  res.statusCode = 404;
	  res.end('Not found');
      });
  


  res.statusCode = 200;
  res.setHeader('Content-Type', 'application/json');
  res.end(JSON.stringify(radioChannels));
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});




*/