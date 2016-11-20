int greater_date(int data1, int data2){

int ano1 = (data1 & 0x0000ffff);		// mascara para obter o ano
int ano2 = (data2 & 0x0000ffff);		// mascara para obter o ano
int dia1 = (data1 & 0x00ff0000);		// mascara para obter o dia
int dia2 = (data2 & 0x00ff0000);		// mascara para obter o dia
int mes1 = (data1 & 0xff000000);		// mascara para obter o mes
int mes2 = (data2 & 0xff000000);		// mascara para obter o mes


	if(ano1 < ano2){                         
		return data2;
	}else if(ano1 > ano2){
		return data1;
	}
	if(mes1 < mes2){
		return data2;
	}else if(mes1 > mes2){
		return data1;
	}
	if(dia1 < dia2){
		return data2;
	}else{
		return data1;
	}

}
