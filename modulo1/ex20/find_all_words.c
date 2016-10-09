 #include <stdio.h>
 #include <string.h>
 
char* find_word(char* str, char* word, char* initial_addr);
 
 void find_all_words(char *str, char* word, char **addrs){
	 char* initial_addr = str;
	 char *end;
	 end = str;
	 int i=0;
	 
	 do{
		end = find_word( str, word,  initial_addr);
		initial_addr = end + strlen(word);
		addrs[i] = end;
		i++;
	 } while(end != NULL);
}
