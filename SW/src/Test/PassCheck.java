package Test;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.ConcurrentLinkedDeque;
public class PassCheck{
    
      public static char[] StringToChar(String a) {
         char[] a1=new char[a.length()];
         for (int i=0;i<a.length();i++) {
             a1[i]=(a.charAt(i));
             }// 문자열 배열로 변환
             return a1;    
             
      }
      public static String Passcheck(String p) {
         char a[] = StringToChar(p);
         int num_count = 0; 
      if((a.length)<6) 
         return "false"; // 패스워드는최소6글자이상
      
      String str = String.valueOf(a);
          if(!str.matches("[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힝]*"))
         return "false"; // 패스워드에특수기호는사용불가
      
      for (int i=0;i<a.length;i++) {
          if(a[i]<='9') // char 값이 숫자일경우
              num_count++;
      }
      if(num_count==a.length || num_count == 0) 
         return "false"; //패스워드는최소문자, 숫자가각각하나이상씩사용되어야함
      
         return "true"; //만약규칙에맞는패스워드라면True를그렇지않다면False를리턴
 }  
    public static void main(String[] args) {
    	  int exit;
        Scanner scanner=new Scanner(System.in);
        String result;
        do {
        System.out.println("패스워드를 입력해주세요");
        String p=scanner.nextLine(); // 비밀번호값 p에 저장
        result = Passcheck(p);
        System.out.println(result);
        System.out.print("계속하시려면 '1'종료하시려면 '0'을 눌러주세요.");
        exit= scanner.nextInt();
        scanner.nextLine();
        }
        while(exit==1);
        scanner.close();
        System.out.print("프로그램을 종료합니다.");
        
        

 }
}


