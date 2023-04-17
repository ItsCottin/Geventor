package br.com.etechoracio.common.business;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.repository.core.support.RepositoryFactorySupport;

/**
 * Criado o método 'getDateAlter()' para retornar a data do sistema para utilizar em métodos de alteração e inclusão de registro.
 * 
 * <pre>
 * Last Modified  $Date: 2023/04/15 $
 * Last Modified by $Author: Rodrigo Cotting $
 * </pre>
 * 
 * @author Rogério de Morais
 * @version $Revision: 1.1 $
 */
public abstract class BaseSB {
	
	@PersistenceContext
	private EntityManager em;

	private RepositoryFactorySupport factory;

	protected abstract void postConstructImpl();
	
	@PostConstruct
	void PostconstructCaller() {
		factory = new JpaRepositoryFactory(em);
		postConstructImpl();
	}

	protected <T> T getDAO(Class<T> clazz) {
		List<Class<?>> lista = Arrays.asList(clazz.getInterfaces());
		for (Class<?> cls : lista) {
			if (cls.getSimpleName().contains("Custom")) {
				String classe = mountClassImpl(cls);
				try {
					return factory.getRepository(clazz, 
												 Class.forName(classe).getConstructor(EntityManager.class)
												 .newInstance(em));
				} catch (Exception e) {
					throw new RuntimeException(e);
				}
			}
		}
		return (T) factory.getRepository(clazz);
	}

	private String mountClassImpl(Class<?> value) {
		StringBuilder url = new StringBuilder();
		url.append(value.getCanonicalName());
		int start = url.length() - (value.getSimpleName().length());
		url.replace(start, url.length(), "");
		url.append("impl.");
		url.append(value.getSimpleName().replaceAll("Custom", "Impl"));
		return url.toString();
	}

	protected void clearEntityManagerSession() {
		if (em != null) {
			em.clear();
		}
	}

	protected void flushEntityManagerSession() {
		if (em != null) {
			em.flush();
		}
	}
	
	protected Date getDateAlter(){
		LocalDateTime agora = LocalDateTime.now();
		return Date.from(agora.atZone(ZoneId.systemDefault()).toInstant());
	}

}
