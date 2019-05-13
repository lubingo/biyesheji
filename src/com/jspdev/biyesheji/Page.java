package com.jspdev.biyesheji;
import java.util.*;
public class Page {
	public int curPage;//��ǰҳ
	public int maxPage;//���ҳ��
	public int maxRowCount;//�������
	public int rowsPerPage;//ÿҳ����
	public java.util.Vector data;//��ҳ��Ҫ��ʾ������
	
	public Page(){}	
	public Page(Message message)throws Exception{
		this.rowsPerPage=10;
		this.maxRowCount=message.getMessageCount();
		this.data=message.getResult();
        this.countMaxPage();
	}
	public void countMaxPage(){
		if(this.maxRowCount%this.rowsPerPage==0){
			this.maxPage=this.maxRowCount/this.rowsPerPage;
		}
		else{
			this.maxPage=this.maxRowCount/this.rowsPerPage+1;
		}
	}
	public Vector getResult(){
		return this.data;
	}
}
