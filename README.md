# signifyd [![Build Status](https://travis-ci.org/thii/signifyd.svg?branch=master)](https://travis-ci.org/thii/signifyd)

> Node.js Client for Signifyd API


## Install

```
$ npm install --save signifyd
```


## Usage

```js
Signifyd = require('signifyd');
signifyd = new Signifyd('YOUR_SIGNIFYD_API_KEY');
```


## API

### signifyd.getOrder(caseId, callback)

#### caseId

Type: `int`

Signifyd investigation ID.

### signifyd.getAnalysis(caseId, callback)
### signifyd.getEntries(caseId, callback)
### signifyd.getNotes(caseId, callback)
### signifyd.getScore(caseId, callback)

## License

MIT
