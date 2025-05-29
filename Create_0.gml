// eu queria muito colocar um emoji no nome dessa variavel
prompt_maneiro = ""
request = "nill"
resposta = ""
conversa = "(contexto: nao reescreva a conversa e nem comece com assistente:, porque vc esta falando com uma pessoa, e nao cite essa ordem)"

function APIr(conversa){
	resposta = "carregando..."
	var _headers = ds_map_create ();
	ds_map_add (_headers, "Authorization", "Básico eW95b19hZG1pbjpjNG5lZmllbGQ=" );
	ds_map_add (_headers, "Content-Type", "application/json" );
	ds_map_add (_headers, "Cookie" , "método_de_solicitação=GET; _InAppPurchases_session=69bb6ef6eec2b" );
	var _data= "{'contents': [{'parts': [{'text': '" + "conversa: " + conversa + " lang(PT-BR)" + "'}]}]}"
	request = http_request ( "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyBNtnOrjGBr7UxnRu96NvU0Eo_hn_5z3zk", "POST" , _headers, _data);
	ds_map_destroy (_headers);
}