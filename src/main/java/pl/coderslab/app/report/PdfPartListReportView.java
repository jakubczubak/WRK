package pl.coderslab.app.report;

import com.itextpdf.text.pdf.PdfPTable;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Iterator;
import java.util.Map;

public class PdfPartListReportView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
                                      HttpServletResponse response) throws Exception {

        String filename = "wrkPartList.pdf";
        response.setHeader( "Content-Disposition", "filename=" + filename );




        @SuppressWarnings("unchecked")
        Map<String, Integer> map = (Map<String, Integer>) model.get("partList");


        PdfPTable pdfPTable = new PdfPTable(2);

        pdfPTable.addCell("Part Name");
        pdfPTable.addCell("Quantity");




        Iterator<Map.Entry<String, Integer>>
                iterator = map.entrySet().iterator();

        while (iterator.hasNext()) {

            Map.Entry entry = iterator.next();
            pdfPTable.addCell((String)entry.getKey());
            int qnty = (Integer) entry.getValue();
            String qntyToString = Integer.toString(qnty);
            pdfPTable.addCell(qntyToString);
        }


    }
}
