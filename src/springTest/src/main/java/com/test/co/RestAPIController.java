package com.test.co;

import java.io.FileInputStream;
import java.io.IOException;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestAPIController{
	
	@RequestMapping(value="/excel", method = RequestMethod.GET)
	public String excelExport()  {
		
		try {
			String path = RestAPIController.class.getResource("").getPath();
			FileInputStream file = new FileInputStream("/Users/users/Downloads/C관리도.xlsx");
			XSSFWorkbook workbook = new XSSFWorkbook(file);
			
			int rowNo = 0; int cellIndex = 0; 
			XSSFSheet sheet = workbook.getSheetAt(0); // 0 번째 시트를 가져온다
			
			int rows = sheet.getPhysicalNumberOfRows(); // 해당 Row에 사용자가 입력한 셀의 수를 가져온다
			
			for(rowNo = 0; rowNo < rows; rowNo++){
				XSSFRow row = sheet.getRow(rowNo); 
				if(row != null){ 
					int cells = row.getPhysicalNumberOfCells(); // 해당 Row에 사용자가 입력한 셀의 수를 가져온다
					
					System.out.println(cells);
				for(cellIndex = 0; cellIndex <= cells; cellIndex++){ 
					XSSFCell cell = row.getCell(cellIndex); // 셀의 값을 가져온다 
					String value = ""; 
					if(cell == null){ // 빈 셀 체크 
						continue; }
					else{ // 타입 별로 내용을 읽는다 
						switch (cell.getCellType()){ 
							case XSSFCell.CELL_TYPE_FORMULA: 
								value = cell.getCellFormula(); break; 
							case XSSFCell.CELL_TYPE_NUMERIC: 
								value = cell.getNumericCellValue() + ""; break; 
							case XSSFCell.CELL_TYPE_STRING: 
								value = cell.getStringCellValue() + ""; break; 
							case XSSFCell.CELL_TYPE_BLANK: 
								value = cell.getBooleanCellValue() + ""; break; 
							case XSSFCell.CELL_TYPE_ERROR: 
								value = cell.getErrorCellValue() + ""; break; 
								} 
						} 
					//System.out.println( rowNo + "번 행 : " + cellIndex + "번 열 값은: " + value);
					}
				}
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return "Str";

	}
	
	
}

