

const http = require('http');

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
  res.statusCode = 200;
  res.setHeader('Content-Type', 'application/json');
  res.end(JSON.stringify(radioChannels));
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});




