if ds_map_find_value(async_load, "id") == request
{
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? json_parse(async_load[? "result"]) : "null";
	
	var _parses = string_split_ext(_r_str, ["{", "}"])
	
	for(var i = 0; i < array_length(_parses); i++){
		if string_pos("text", _parses[i]){
			var resp = _parses[i]
			var resp2 = string_split(resp, " ")
			
			resposta = ""
			
			for(var k = 0; k < array_length(resp2); k++){
				if !string_pos("text", resp2[k]) and !string_pos(":", resp2[k]){
					resposta+=resp2[k]+" "
				}
			}
			
			conversa+="assistente(vc): " + resposta
		}
	}
}