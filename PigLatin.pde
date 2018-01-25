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
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord)== 0){
		return sWord + "way";
	}
	else if(findFirstVowel(sWord.substring(0,1)) == "qu"){
		return sWord.substring(2,sWord.length) + "quay";
	}
	else
	{
		return "ERROR!";
	}
}
