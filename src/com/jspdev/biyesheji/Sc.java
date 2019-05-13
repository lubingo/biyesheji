package com.jspdev.biyesheji;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.jspdev.biyesheji.base.BaseSc;




public class Sc extends BaseSc {
	private static final long serialVersionUID = 1L;
	private static Session session;
    private static Transaction tr;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Sc () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Sc (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Sc (
		java.lang.Long id,
		java.lang.String sno,
		java.lang.String cno,
		java.lang.String name,
		java.lang.Long credit,
		java.lang.String teacher,
		java.lang.String time,
		java.lang.String address,
		java.lang.String type,
		java.lang.String selected) {

		super (
			id,
			sno,
			cno,
			name,
			credit,
			teacher,
			time,
			address,
			type,
			selected);
	}

/*[CONSTRUCTOR MARKER END]*/

//��ѯ����	
	public static Collection queryOperator(String hql) throws Exception{
		session=HibernateSessionFactory.getSession();
		Query query=session.createQuery(hql);
    	List list=query.list();
    	return list;
    }
	
//����һ��ָ����ѡ�μ�¼
	public Sc getSc(String sno,String cno) throws Exception{
		session=HibernateSessionFactory.getSession();
		String hql="select s.id from Sc s where s.sno='"+sno+"'and s.cno='"+cno+"'";
		String id1=((List)queryOperator(hql)).get(0).toString();
		Long id=Long.parseLong(id1);
		Sc sc=null;
	    sc=(Sc)session.get(Sc.class, id);
		return sc;
	}

//�ж�һ��ѡ�μ�¼�Ƿ����
	public Boolean isTrue(String sno,String cno) throws Exception{
		session=HibernateSessionFactory.getSession();
		String hql="from Sc s where s.sno='"+sno+"' and s.cno='"+cno+"'";
		Query query=session.createQuery(hql);
		List list=query.list();
		if(list.size()>0) return true;
		else return false;
	}
	
//����һ��ѡ�μ�¼	
	public static void addSc(Sc sc)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		session.save(sc);
		tr.commit();
	}
	
//ɾ��һ��ѡ�μ�¼	
	public static void deleteSc(String sno,String cno)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		String hql="delete Sc s where s.sno='"+sno+"'and s.cno='"+cno+"'";
		session.createQuery(hql).executeUpdate();
		tr.commit();
	}

//����ָ��ѧ����ѡ�޵����пγ�
	public Collection getScs(String sno)throws Exception{
		String hql="from Sc s where s.sno='"+sno+"'";
		return queryOperator(hql);
	}
	
//����ѡ��ָ���γ̵�����ѧ��	
	public Collection getStudents(String cno)throws Exception{
		String hql="from Student st where st.id in(select s.sno from Sc s where s.cno='"+cno+"'and s.selected='false')";
		return queryOperator(hql);
	}
	
//����ָ����ʦ�����ѡ�޿�
	public Collection getTeaScs(String teaName)throws Exception{
		String hql="from Course c where c.teacher='"+teaName+"' and c.type='����ѡ�޿�'";
		return queryOperator(hql);
	}
	
//����ѡ��ָ���γ̲����Ѿ���ѡ��ѧ��
	public Collection getSelectedStudents(String cno)throws Exception{
		String hql="from Student st where st.id in(select s.sno from Sc s where s.cno='"+cno+"'and s.selected='true'"+")";
		return queryOperator(hql);
	}
	
//ѡ��ָ��ѧ��ѡ��ָ���γ�(�������δѡ��״̬���ѡ��״̬)
	public void f_tSc(String sno,String cno)throws Exception{
		String hql="update Sc s set s.selected='true' where s.sno='"+sno+"'and s.cno='"+cno+"'";
		session=HibernateSessionFactory.getSession();
	    tr=session.beginTransaction();
	    session.createQuery(hql).executeUpdate();
	    tr.commit();
	}
	
//ȡ��ָ��ѧ��ѡ��ָ���γ�(�������ѡ��״̬���δѡ��״̬)
	public void t_fSc(String sno,String cno)throws Exception{
		String hql="update Sc s set s.selected='false' where s.sno='"+sno+"'and s.cno='"+cno+"'";
		session=HibernateSessionFactory.getSession();
	    tr=session.beginTransaction();
	    session.createQuery(hql).executeUpdate();
	    tr.commit();
	}
}