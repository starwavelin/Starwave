package bean;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

public class Counter {
	
	private String currentRecord;
	private BufferedReader br;	
	private PrintWriter pw;
	
	public Counter() {}
	
	public String readRecord(String path) throws FileNotFoundException {
		br = new BufferedReader(new FileReader(path));
		String ret = null;
		try {
			currentRecord = br.readLine();
			br.close();
		} catch(IOException e) {
			System.out.println(e.getMessage());
		}
		if (currentRecord == null) {
			ret = "0";
		} else {
			ret = currentRecord;
		}
		return ret;
	}
	
	public void writeRecord(String path, String count) throws FileNotFoundException {
		int ret = Integer.parseInt(count) + 1;
		try {
			pw = new PrintWriter(new FileOutputStream(path));
			System.out.println("The real URL of count.txt to write is: " + path);
			pw.print(ret);
			pw.close();
		} catch(IOException e) {
			System.out.println(e.getMessage());
		}
	}
	
	/*public static void main(String[] args) throws FileNotFoundException {
		System.out.println("PATH is " +  LOCAL_PATH);
		Counter testCounter = new Counter();
		System.out.println("RECORD is " +  testCounter.readRecord(LOCAL_PATH));
	}*/
 }
