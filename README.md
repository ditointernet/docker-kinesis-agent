# docker-kinesis-agent
Imagem Docker para o Kinesis agent baseada em [zendesk/amazon-kinesis-agent](https://github.com/zendesk/docker-amazon-kinesis-agent).

## Variáveis de ambiente
Chaves de acesso AWS podem ser definidas através das seguintes variáveis:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`

Elas podem ficar vazias em ambiente de produção onde usamos autenticação IAM role.

Outras variáveis para configuração do agent:

* `CLOUDWATCH_EMIT_METRICS`: habilita monitoramento via Cloudwatch. (Default: `true`)
* `AWS_REGION`: região AWS. (Default: `us-east-1`)
* `KINESIS_FILE_PATTERN`: arquivos cujos dados serão enviados para o Kinesis. (Default: `/tmp/app.log*`)
* `KINESIS_STREAM`: nome do stream Kinesis. (Default: `stream`)
* `FIREHOSE_FILE_PATTERN`: arquivos cujos dados serão enviados para o Firehose. (Default: `/tmp/app.log*`)
* `FIREHOSE_DELIVERY_STREAM`: nome do stream Firehose. (Default: `stream`)
