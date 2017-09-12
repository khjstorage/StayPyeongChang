import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

public class dateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            GregorianCalendar cal = new GregorianCalendar();

            Date startDate = sdf.parse("2017-12-31");
            Date endDate = sdf.parse("2018-01-03");
            
            
            //두날짜 사이의 시간 차이(ms)를 하루 동안의 ms(24시*60분*60초*1000밀리초) 로 나눈다.
            long diffDay = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
            System.out.println("두 날짜간의 차이는 "+diffDay+"일");
            
            for(int i= 0; i <diffDay; i++) {
            	cal.setTime(startDate);            
            	cal.add(cal.DAY_OF_YEAR, i);
            	System.out.println(sdf.format(cal.getTime()));
            }
            
            
        }catch(ParseException e){
            e.printStackTrace();
        }

	}

}
