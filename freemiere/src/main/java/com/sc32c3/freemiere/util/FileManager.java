package com.sc32c3.freemiere.util;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

import com.sc32c3.freemiere.vo.FileFolder;

/**
 * 
 * @author minsu
 *
 */
public class FileManager {
	
	public static String[] findByExtension(String path, String ext)
	{
		File file = new File (path);	
		
		String[] files = file.list( (File dir, String name) -> { 
			boolean rst = false;
			File f = new File(dir + "/" + name);
			if ( f.isFile() ) {
					int idx = name.lastIndexOf(("."));
					String extIn = name.substring(idx + 1);
					if (ext.equalsIgnoreCase(extIn))
						rst = true;
				}
			return rst;
			} );
		
		return files;
	}
	
	public static void fileSort(File[] files)
	{
		Arrays.sort(files, (first, second) -> {
			if (first.isDirectory() && second.isFile())
				return 1;
			else if (first.isFile() && second.isDirectory() )
				return -1;
			else
				return 0;
		});
	}
	
	public static File[] findFile(String path)
	{
		File file = new File (path);	
		File[] files = file.listFiles();
		return files;
		//for( File f : files )
		//{
		//	if ( f.isDirectory() ) {
		//		result.add(f);
				//if(isRecursive == true)
				//	findFileRecursive( f.getAbsolutePath() , result, isRecursive );
		//	}
		//	else 
		//		result.add(f);
		//}
	}
	public static void findFileRecursive(String path, ArrayList<File> result)//사용자컴터에서 폴더를 확인해 파일을 담아온다
	{
		File file = new File (path);	//경로를 받아온다
		File[] files = file.listFiles();//받아온 경로의 파일 리스트를 배열에 담는다
		for( File f : files )	//배열에 담긴 파일을 하나씩 가져온다 
		{
			if ( f.isDirectory() ) {//해당 패스에서 디렉토리(폴더)가 존재하는지 확인해서 있으면 
				//result.add(f);
				
				findFileRecursive( f.getAbsolutePath() , result );//절대경로로 정해서 다시 패스에 담는다, 파일은 result에 담는다
			}
			else 
				result.add(f);
		}
	}
	
}
