create external table if not exists logdna_logs
(
  _index string,
  _type string,
  _id string,
  _score int,
  _source struct <
    _account: string,
    _cluster: string,
    _host: string,
    _ingester: string,
    _logtype: string,
    _mac: string,
    _file: string,
    _line: string,
    _ts: int,
    _app: string,
    _ip: string,
    _ipremote: string,
    __key: string,
    _bid: string,
    level: string,
    clientip: string,
    ident: string,
    auth: string,
    verb: string,
    request: string,
    httpversion: string,
    response: int,
    bytes: int,
    referrer: string,
    agent: string,
    _lid: string
  >,
)
row format serde 'org.openx.data.jsonserde.JsonSerDe'
location 's3://yukpiz-logs/2019/01/';