package MyCustomTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class MyTagHandler extends TagSupport{
    public int doStartTag() throws JspException{
        JspWriter out=pageContext.getOut();//return JspWriter
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy MM dd HH:mm");
            Calendar calendar = new GregorianCalendar();
            out.print(sdf.format(calendar.getTime()));
        }catch(Exception e){System.out.println(e);}
        return SKIP_BODY;
        //will not evaluate the body content of the tag
    }
}
