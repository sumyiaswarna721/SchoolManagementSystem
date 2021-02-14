/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import java.sql.ResultSet;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author User
 */
public class StudentRecord extends javax.swing.JFrame {

    /**
     * Creates new form StudentRecord
     */
    public StudentRecord() {
        initComponents();
        getdata();
        this.setLocationRelativeTo(null);
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    
    
     sqlcom.SelectData sd= new sqlcom.SelectData();
     private void getdata() {
         
         DefaultTableModel model = (DefaultTableModel) tblDisplay.getModel();
        model.setRowCount(0);
     
            try {
                 String query = "select * from student ";
            ResultSet rs = sd.getsdata(query);
            while (rs.next()) {

                model.addRow(new Object[]{rs.getString("admission"), rs.getString("name"), rs.getString("class"), rs.getString("section"),  rs.getString("roll"),  rs.getString("gender"),  rs.getString("dob"),  rs.getString("fname"),  rs.getString("mname"),  rs.getString("mobile"), rs.getString("address")});
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }

           

    }

     
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        cbclass = new javax.swing.JComboBox<String>();
        jLabel3 = new javax.swing.JLabel();
        cbsection = new javax.swing.JComboBox<String>();
        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblDisplay = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(0, 102, 153));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(204, 204, 255));
        jLabel1.setText("Student Record");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(204, 204, 255));
        jLabel2.setText("Class");

        cbclass.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "----Selected-----", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }));
        cbclass.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbclassItemStateChanged(evt);
            }
        });
        cbclass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbclassActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(204, 204, 255));
        jLabel3.setText("Section");

        cbsection.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "----Selected-----", "A", "B", "C", "D", "E", "F", "G", "H" }));
        cbsection.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbsectionItemStateChanged(evt);
            }
        });
        cbsection.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbsectionActionPerformed(evt);
            }
        });

        jButton1.setBackground(new java.awt.Color(0, 102, 153));
        jButton1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton1.setText("Refresh");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        tblDisplay.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Admission No", "Name", "Class", "Section", "Roll", "Gender", "DOB", "F_Name", "M_Name", "Mobile", "Address", "Id"
            }
        ));
        tblDisplay.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblDisplayMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblDisplay);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 924, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(67, 67, 67)
                        .addComponent(jLabel2)
                        .addGap(18, 18, 18)
                        .addComponent(cbclass, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(36, 36, 36)
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(cbsection, javax.swing.GroupLayout.PREFERRED_SIZE, 218, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(90, 90, 90)
                        .addComponent(jButton1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(274, 274, 274)
                        .addComponent(jLabel1)))
                .addContainerGap(21, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(jLabel1)
                .addGap(71, 71, 71)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(cbclass, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3)
                    .addComponent(cbsection, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 24, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 329, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(24, 24, 24))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    int f=0;
    private void cbclassItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbclassItemStateChanged
        // TODO add your handling code here:
        
         DefaultTableModel model = (DefaultTableModel)tblDisplay.getModel();
         model.setRowCount(0);
         
       
         
          try{
          String query = "select * from student where class ='"+cbclass.getSelectedItem().toString()+"' ";
         ResultSet rs= sd.getsdata(query);
       
            while(rs.next())
            {
               model.addRow(new Object[]{rs.getString("admission"), rs.getString("name"), rs.getString("class"), rs.getString("section"),  rs.getString("roll"),  rs.getString("gender"),  rs.getString("dob"),  rs.getString("fname"),  rs.getString("mname"),  rs.getString("mobile"), rs.getString("address")});
             
            }
           
        }
        catch(Exception e) {
            
        }
       
     try {
          String query = "select section from class where class_name= '"+cbclass.getSelectedItem()+"' ";
        ResultSet rs= sd.getsdata(query);
       
            while(rs.next())
            {
           cbsection.setSelectedItem(rs.getString("section"));  
             
            }
           
            f=1;
        }
        catch(Exception e) {
            
        }
        
    }//GEN-LAST:event_cbclassItemStateChanged

    private void cbclassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbclassActionPerformed
        // TODO add your handling code here:

    }//GEN-LAST:event_cbclassActionPerformed

    private void cbsectionItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbsectionItemStateChanged
        // TODO add your handling code here:
        if(f!=0) {
              DefaultTableModel model = (DefaultTableModel) tblDisplay.getModel();
              model.setRowCount(0);
             
      
         
          try{
          String query = "select * from student where class='"+cbclass.getSelectedItem().toString()+"' and section ='"+cbsection.getSelectedItem()+"' ";
        ResultSet rs= sd.getsdata(query);
       
            while(rs.next())
            {
               model.addRow(new Object[]{rs.getString("admission"), rs.getString("name"), rs.getString("class"), rs.getString("section"),  rs.getString("roll"),  rs.getString("gender"),  rs.getString("dob"),  rs.getString("fname"),  rs.getString("mname"),  rs.getString("mobile"), rs.getString("address")});
             
            }
           
        }
        catch(Exception e) {
            
        }
        }        
        
        
        
    }//GEN-LAST:event_cbsectionItemStateChanged

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        getdata();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void cbsectionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbsectionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cbsectionActionPerformed

    private void tblDisplayMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblDisplayMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_tblDisplayMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(StudentRecord.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(StudentRecord.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(StudentRecord.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(StudentRecord.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new StudentRecord().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> cbclass;
    private javax.swing.JComboBox<String> cbsection;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblDisplay;
    // End of variables declaration//GEN-END:variables
}
