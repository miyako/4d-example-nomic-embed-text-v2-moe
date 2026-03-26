//%attributes = {}
var $en; $fr : 4D:C1709.Vector
var $AIClient : cs:C1710.AIKit.OpenAI
var $cosineSimilarity : Real
$AIClient:=cs:C1710.AIKit.OpenAI.new()

$AIClient.baseURL:="http://127.0.0.1:8080/v1"

$fr:=$AIClient.embeddings.create("Hello!").embedding.embedding
$en:=$AIClient.embeddings.create("¡Hola!").embedding.embedding

$cosineSimilarity:=$fr.cosineSimilarity($en)

ALERT:C41([$cosineSimilarity].join())

//0.82564090708335
