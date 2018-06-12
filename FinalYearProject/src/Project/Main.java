package Project;

import java.awt.event.WindowEvent;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.MatOfByte;
import org.opencv.core.MatOfPoint;
import org.opencv.core.Rect;
import org.opencv.core.Scalar;
import org.opencv.core.Size;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.VideoCapture;   // VideoCapture

public class Main extends javax.swing.JFrame implements RecorderInterface {
///

    public DaemonThread myThread = null;
    int count = 0;
    static Mat imag = null;
    MatOfByte mem = new MatOfByte();
// ////////////////////////////////////////////////////////////
    Mat frame = new Mat();
    Mat outerBox = new Mat();
    Mat diff_frame = null;
    Mat tempon_frame = null;
    ArrayList<Rect> array2 = new ArrayList<>();
    VideoCapture camera = new VideoCapture(1);
    Size sz = new Size(640, 480);
    int i = 0;
    ////////////////////////////////////////////////
//     ResourceLock lock = new ResourceLock();
     
    class DaemonThread implements Runnable {

        protected volatile boolean runnable = false;
        

        @Override
        public void run() {
            synchronized (this) {
//windows label
                JFrame jframe = new JFrame("HUMAN MOTION DETECTOR AND INSTANT  ALERT SYSTEM");

                JLabel vidpanel = new JLabel();

                jframe.setContentPane(vidpanel);
                jframe.setSize(640, 480);
                jframe.setVisible(true);

 //implementation of all threads
            while (runnable) {
                    if (camera.read(frame)) {

                       //  Graphics g = jPanel1.getGraphics();
//resizing of theframes captured to fit in the window.
                        Imgproc.resize(frame, frame, sz);
                        imag = frame.clone();
                        outerBox = new Mat(frame.size(), CvType.CV_8UC1);
//greying the image
                        Imgproc.cvtColor(frame, outerBox, Imgproc.COLOR_BGR2GRAY);
                        Imgproc.GaussianBlur(outerBox, outerBox, new Size(3, 3), 0);
//obtaining the differences in frames 
                        if (i ==0) {

                            //  jframe.setSize(frame.width(), frame.height());
                            diff_frame = new Mat(outerBox.size(), CvType.CV_8UC1);
                            tempon_frame = new Mat(outerBox.size(), CvType.CV_8UC1);
                            diff_frame = outerBox.clone();
                        }
//detecting motion
                        if (i == 1) {
                            Core.subtract(outerBox, tempon_frame, diff_frame);
                            System.out.println(diff_frame);
                            System.out.println("diffance");

                            Imgproc.adaptiveThreshold(diff_frame, diff_frame, 255,
                                    Imgproc.ADAPTIVE_THRESH_MEAN_C,
                                    Imgproc.THRESH_BINARY_INV, 5, 2);

                            array2 = detection_contours(diff_frame);
                            System.out.println(array2);

                            if (array2.size() > 0) {
                                Iterator<Rect> it2 = array2.iterator();
                                while (it2.hasNext()) {
                                    Rect obj = it2.next();
                                    Imgproc.rectangle(imag, obj.br(), obj.tl(), new Scalar(0, 255, 0), 1);
                                    System.out.println(array2);
                                }
                                try {
//releasing of the camera resource after detecting motion
                                    camera.release();
                                    this.runnable = false;
                                   // this.finalize();
                                    this.notifyAll();
                                     LaunchButton.setEnabled(true);
                                  
                                  //   frame.wait();
//intiatiation of a recording class   
  
                                    Recorder rec = new Recorder(Main.this);
                                    Thread thred=new Thread(rec);
                                    thred.start();
      
                                } catch (Exception ex) {
                                ex.printStackTrace();
                                }
                                
                        
                            }
                        }
                        i = 1;
                        ImageIcon image = new ImageIcon(Mat2bufferedImage(imag));
                        vidpanel.setIcon(image);
                        vidpanel.repaint();
                        tempon_frame = outerBox.clone();
                        
                       
                    }
                    
                    
                }
             
            }
        }
    }
//storing of different images into a buffer ready for output
    
    public void startToMonitor(){
        startMonitoring();
    }
    
    public static BufferedImage Mat2bufferedImage(Mat image) {
        MatOfByte bytemat = new MatOfByte();
        Imgcodecs.imencode(".jpg", image, bytemat);
        byte[] bytes = bytemat.toArray();
        InputStream in = new ByteArrayInputStream(bytes);
        BufferedImage img = null;
        try {
            img = ImageIO.read(in);
        } catch (IOException e) {
        }
        
        return img;
    }
//detection of contours on the frame
    public static ArrayList<Rect> detection_contours(Mat outmat) {
        Mat v = new Mat();
        Mat vv = outmat.clone();
        List<MatOfPoint> contours = new ArrayList<MatOfPoint>();
        Imgproc.findContours(vv, contours, v, Imgproc.RETR_LIST,
                Imgproc.CHAIN_APPROX_SIMPLE);

        double maxArea = 8000;
        int maxAreaIdx = -1;
        Rect r = null;
        ArrayList<Rect> rect_array = new ArrayList<Rect>();

        for (int idx = 0; idx < contours.size(); idx++) {
            Mat contour = contours.get(idx);
            double contourarea = Imgproc.contourArea(contour);
            if (contourarea > maxArea) {
                maxArea = contourarea;
                maxAreaIdx = idx;
                r = Imgproc.boundingRect(contours.get(maxAreaIdx));
                System.out.println(contours.get(maxAreaIdx));
                System.out.println("contours");
                rect_array.add(r);
                Imgproc.drawContours(imag, contours, maxAreaIdx, new Scalar(0, 0, 255));
            }

        }

        v.release();

        return rect_array;

    }

    public Main() {

        initComponents();
//        System.out.println(FaceDetection.class.getResource("haarcascade_frontalface_alt.xml").getPath().substring(1));
    }
//main function of that all program
    public static void main(String args[]) {
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);

        java.awt.EventQueue.invokeLater(() -> {
            new Main().setVisible(true);
        });
    HomePage.main1();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jFileChooser1 = new javax.swing.JFileChooser();
        jPanel1 = new javax.swing.JPanel();
        LaunchButton = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(204, 51, 0));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 6));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 735, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 363, Short.MAX_VALUE)
        );

        LaunchButton.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        LaunchButton.setText("Launch Project");
        LaunchButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                LaunchButtonActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 3, 24)); // NOI18N
        jLabel1.setText("Survillance System  Using Webcam");

        jButton2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton2.setText("Exit");
        jButton2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton5.setText("SYSTEM SETTINGS");
        jButton5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(100, 100, 100)
                        .addComponent(LaunchButton)
                        .addGap(71, 71, 71)
                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 218, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(200, 200, 200)
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 445, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(40, 40, 40)
                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addGap(92, 92, 92))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(12, 12, 12)
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(LaunchButton)
                    .addComponent(jButton2)
                    .addComponent(jButton5))
                .addGap(83, 83, 83))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
//Luanch button...............................................................................
    
    
    
    
    private void startMonitoring(){
        camera = new VideoCapture(0); // video capture from default cam
        myThread = new DaemonThread(); //create object of thread class
        Thread t = new Thread(myThread);
        t.setDaemon(true);
        myThread.runnable = true;
        t.start();                 //start thrad
        
    }
    
    
    
    
    
    
    private void LaunchButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_LaunchButtonActionPerformed

        startMonitoring();
        LaunchButton.setEnabled(false);  // deactivate start button


    }//GEN-LAST:event_LaunchButtonActionPerformed
//exit button.................................................................................
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        System.exit(0);
    }//GEN-LAST:event_jButton2ActionPerformed
//system management.............................................................................
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // TODO add your handling code here:
        systemExit();
        HomePage login = new HomePage();
        login.setVisible(true);

        this.setVisible(false);


    }//GEN-LAST:event_jButton5ActionPerformed

//Exit  method..................................................................................
    public void systemExit() {
        WindowEvent winCloseing = new WindowEvent(this, WindowEvent.WINDOW_CLOSING);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton LaunchButton;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton5;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
