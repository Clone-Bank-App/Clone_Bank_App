var express = require('express');
var fs = require('fs');
const { parse } = require('csv-parse');
var app = express();
const cors = require('cors');


app.get('/data', (req, res) => {
  let sent = false; // 첫 번째 데이터 행을 전송했는지 추적합니다.

  fs.createReadStream('C:/Users/gpdbs/Downloads/Clone_Bank_App/table.csv')
    .pipe(parse({ delimiter: ',', from_line: 2 }))
    .on('data', (row) => {
      if (!sent) {
        res.json({ firstCell: row[0] }); // 첫 번째 셀 데이터 전송
        sent = true; // 첫 번째 행을 전송했음을 표시합니다.
      }
    })
    .on('end', () => {
      if (!sent) {
        // 파일에 데이터가 없는 경우 응답
        res.status(404).send('No data available');
      }
    })
    .on('error', (err) => {
      res.status(500).send('Error reading CSV file');
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));
