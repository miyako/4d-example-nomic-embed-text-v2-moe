## [nomic-ai/nomic-embed-text-v2-moe](https://huggingface.co/nomic-ai/nomic-embed-text-v2-moe)

|`max_position_embeddings`|`hidden_size`|`num_hidden_layers`|`pooling`
|-:|-:|-:|-:|
|`2048`|`768`|`12`|`mean`

```4d
var $en; $fr : 4D.Vector
var $AIClient : cs.AIKit.OpenAI
var $cosineSimilarity : Real
$AIClient:=cs.AIKit.OpenAI.new()

$AIClient.baseURL:="http://127.0.0.1:8080/v1"

$fr:=$AIClient.embeddings.create("Hello!").embedding.embedding
$en:=$AIClient.embeddings.create("¡Hola!").embedding.embedding

$cosineSimilarity:=$fr.cosineSimilarity($en)

ALERT([$cosineSimilarity].join())
```

##### Cosine similarity from example code above:

|llama.cpp `Q8_0`|
|-|
|`0.82564090708335`|
