package com.controllers.dao;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import com.controllers.model.Office;


	@Component
	public class OfficeDao {
		
		@Autowired
		private HibernateTemplate hibernateTemplate;
		
		//creating new patient
		@Transactional
		public void createPatient(Office office) {
			this.hibernateTemplate.saveOrUpdate( office);
		}
		
		// get all project
		public List< Office> getPatient(){
			List< Office>  patients=this.hibernateTemplate.loadAll( Office.class);
			return patients;
		}
		
		// delete the single patient
		@Transactional
		public void deletePatient(int id) {
			 Office p=this.hibernateTemplate.load( Office.class, id);
			this.hibernateTemplate.delete(p);
		}
		
		// get the single patient
		public  Office getPatient(int sid) {
			return this.hibernateTemplate.get(Office.class, sid);
		}
	}
