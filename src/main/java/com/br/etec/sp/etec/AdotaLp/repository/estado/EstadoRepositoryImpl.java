package com.br.etec.sp.etec.AdotaLp.repository.estado;

import com.br.etec.sp.etec.AdotaLp.model.Estado;
import com.br.etec.sp.etec.AdotaLp.repository.filter.EstadoFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.util.Predicates;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;


public class EstadoRepositoryImpl implements EstadoRepositoryQuery{

    @PersistenceContext
    private EntityManager manager;

    @Override
    public Page<Estado> Filtrar(EstadoFilter estadofilter, Pageable pageable) {

        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Estado> criteria = builder.createQuery(Estado.class);
        Root<Estado> root = criteria.from(Estado.class);

        Predicate[] predicates = criarrestricoes(estadofilter, builder, root);

        criteria.where(predicates);

        return null;
    }

    private Predicate[] criarrestricoes(EstadoFilter estadofilter, CriteriaBuilder builder, Root<Estado> root) {

        List<Predicates> predicates = new ArrayList<>();

    }


}
