package pl.coderslab.app.report;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Iterator;
import java.util.Map;

public class ExcelPartListReportView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
                                      HttpServletResponse response) throws Exception {

        String filename = "wrkPartList";
        response.setContentType("text/xml");
        response.setHeader( "Content-Disposition", "filename=" + filename );




        @SuppressWarnings("unchecked")
        Map<String, Integer> map = (Map<String, Integer>) model.get("partList");

        Sheet sheet = workbook.createSheet("Part LIST");

        //header row

        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("NAME:");
        header.createCell(1).setCellValue("QUANTITY:");


        int rowNumber = 1;

        Iterator<Map.Entry<String, Integer>>
                iterator = map.entrySet().iterator();

        while (iterator.hasNext()) {
            Row row = sheet.createRow(rowNumber++);
            Map.Entry entry = iterator.next();
            row.createCell(0).setCellValue((String) entry.getKey());
            row.createCell(1).setCellValue((Integer) entry.getValue());

        }


    }
}
