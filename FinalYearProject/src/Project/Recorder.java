package Project;


import static Project.Text.sendMessage;
import com.googlecode.javacv.CanvasFrame;
import com.googlecode.javacv.FFmpegFrameRecorder;
import com.googlecode.javacv.OpenCVFrameGrabber;
import static com.googlecode.javacv.cpp.avutil.AV_PIX_FMT_YUV420P;
import com.googlecode.javacv.cpp.opencv_core.IplImage;
import java.io.File;
import java.sql.Connection;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Recorder extends Thread {
    public String FILENAME = "Video"+System.currentTimeMillis()+".mp4";
    public String link="D:/Code/final year/Trial/"+FILENAME;
    public long length = 0;
    
    RecorderInterface recorderInter;
    
    public Recorder(Main mainClass){
        recorderInter = (RecorderInterface) mainClass;
        FILENAME = "Video"+System.currentTimeMillis()+".mp4";
        link="D:/Code/final year/Trial/"+FILENAME;
        length = 0;
    }
    
    public void run(){
        try {
          //  sendMessage();
            recoder();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    public  void recoder()throws Exception{
    
    
    OpenCVFrameGrabber grabber = new OpenCVFrameGrabber(0);
        grabber.start();
       
        IplImage grabbedImage = grabber.grab();
        CanvasFrame canvasFrame = new CanvasFrame("Camera is  recording");
        canvasFrame.setCanvasSize(grabbedImage.width(), grabbedImage.height());
       
        System.out.println("framerate = " + grabber.getFrameRate());
        grabber.setFrameRate(grabber.getFrameRate());
        FFmpegFrameRecorder recorder = new FFmpegFrameRecorder(FILENAME,  grabber.getImageWidth(),grabber.getImageHeight());

        recorder.setVideoCodec(13);
        recorder.setFormat("mp4");
        recorder.setPixelFormat(AV_PIX_FMT_YUV420P );
        recorder.setFrameRate(30);
        recorder.setVideoBitrate(10 * 1024 * 1024);
        recorder.start();
        
        
         try{

        Connection con =SystemMgnt.getConnection(); 
        String sql="insert into tData (vidName,vidLink)values ('"+FILENAME +"','"+link+"' );";
        Statement st = con.createStatement();
        st.executeUpdate(sql);
        con.close();
           }
           catch(Exception ex){
           ex.printStackTrace();
           }
         
        while (canvasFrame.isVisible() && (grabbedImage = grabber.grab()) != null) {
            canvasFrame.showImage(grabbedImage);
            recorder.record(grabbedImage);
            
                            File f = new File(link); 
                            length = f.length();
                            float mbz = length/1048576;
                            if(mbz >=10){
                              recorder.stop();
                              recorder.stop();
                              
                              grabber.stop();
                              canvasFrame.dispose();
                            

                            }else
                            {
                                 canvasFrame.showImage(grabbedImage);
                                  recorder.record(grabbedImage); 
                            }
                            
                            
        }      
        
        //System.out.println("Monitoring again");
        length = 0;
                            recorderInter.startToMonitor();
   
    }
    
    }
