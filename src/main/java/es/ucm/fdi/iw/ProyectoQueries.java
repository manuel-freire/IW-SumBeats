package es.ucm.fdi.iw;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;

import es.ucm.fdi.iw.model.Proyecto;


public class ProyectoQueries {

	private static Logger log = Logger.getLogger(ProyectoQueries.class);

	private EntityManager entityManager;
	
	public ProyectoQueries(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	public Proyecto findWithName(String name) {
		try {
			Proyecto p = entityManager.createQuery("from Proyecto p where p.name = :name", Proyecto.class)
					.setParameter("name", name)
					.getSingleResult();

			return p;
		} catch (Exception e) {
			log.info("No existe el proyecto", e);
			return null;
		}
	}
	
	public List<Proyecto> getTrendy() {
		try {
			TypedQuery<Proyecto> query = entityManager.createQuery("from Proyecto p order by p.weekRating", Proyecto.class)
					.setMaxResults(10);
			List<Proyecto> lista = query.getResultList();
			return lista;
		} catch (Exception e) {
			log.info("No existen proyectos", e);
			return null;
		}
	}
	
	public List<Proyecto> getProjectSearch(String search) {
		try {
			TypedQuery<Proyecto> query = entityManager.createQuery("from Proyecto p where name LIKE CONCAT('%',:text,'%') order by name", Proyecto.class)
					.setParameter("text", search)
					.setMaxResults(100);
			List<Proyecto> lista = query.getResultList();
			return lista;
		} catch (Exception e) {
			log.info("No existen proyectos que contengan la palabra clave", e);
			return new ArrayList<Proyecto>();
		}
	}
	
}