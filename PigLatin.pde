public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  for(int x = 0; x < word.length(); x++){
    if(word.substring(x, x+1).equals("a")|| word.substring(x, x+1).equals("e")||word.substring(x, x+1).equals("i")||word.substring(x, x+1).equals("o")||word.substring(x, x+1).equals("u")){
      return x;
    }    
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(sWord.charAt(0)=='q' ){
		return sWord.substring(2) + "quay";
	}
	// if the first letter starts with q, delete it and add quay
	else if(sWord.charAt(0) == 's' && sWord.charAt(1)== 't'){
		return sWord.substring(2) + "stay";
	}
	//if the first two letters start with st, delete them and add stay
	else if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	// if there are no vowels, add ay to the end
	else if(findFirstVowel(sWord)== 0){
		return sWord + "way";
	}
	// if the vowel is the first letter, add way to the end
	else if(sWord.charAt(0)!= 'a' || sWord.charAt(0)!= 'e' || sWord.charAt(0)!= 'i' || sWord.charAt(0)!= 'o'|| sWord.charAt(0)!= 'u'){
		return sWord.substring(1) + sWord.charAt(0) + "ay";
	}
	// if first letter doesn't have a vowel at the start, move first letter and add ay
	else
	{
		return "ERROR!";
	}
}