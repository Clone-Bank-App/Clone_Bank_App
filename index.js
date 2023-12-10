var express = require('express');
var fs = require('fs');
var parse = require('csv-parse');
var app = express();


app.get('/data', (req, res) => {
  fs.createReadStream('C:/Users/gpdbs/Downloads/Clone_Bank_App/table.csv') // CSV 파일 경로를 지정합니다.
    .pipe(parse({ delimiter: ',', from_line: 2 })) // 첫 번째 행(헤더)을 건너뛰고 파싱합니다.
    .on('data', (row, index) => {
      // 여기서 row는 CSV의 각 행을 나타내고, index는 행 인덱스입니다.
      if (index === 0) { // 첫 번째 데이터 행만 처리합니다 (from_line 옵션으로 인해 여기서 index는 0부터 시작합니다).
        res.json({ firstCell: row[0] }); // 1행 1열의 데이터를 응답으로 보냅니다.
        res.end(); // 응답을 종료합니다.
      }
    })
    .on('error', (err) => {
      res.status(500).send('Error reading CSV file');
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));
