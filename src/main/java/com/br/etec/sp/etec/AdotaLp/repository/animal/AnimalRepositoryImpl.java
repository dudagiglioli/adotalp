package com.br.etec.sp.etec.AdotaLp.repository.animal;

import com.br.etec.sp.etec.AdotaLp.model.Animal;
import com.br.etec.sp.etec.AdotaLp.repository.filter.AnimalFilter;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class AnimalRepositoryImpl implements  AnimalRepositoryQuery{

    @PersistenceContext
    private EntityManager manager;

    @Override
    public Page<Animal> Filtrar(AnimalFilter animalfilter, Pageable pageable) {

        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Animal> criteria = builder.createQuery(Animal.class);
        Root<Animal> root = criteria.from(Animal.class);

        Predicate[] predicates = criarrestricoes(animalfilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("nome")));

        TypedQuery<Animal> query = manager.createQuery(criteria);

        return new PageImpl<>(query.getResultList(), pageable, total(animalfilter));
    }

    private Long total(AnimalFilter animalfilter){

        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
        Root<Animal> root = criteria.from(Animal.class);

        Predicate[] predicates = criarrestricoes(animalfilter, builder, root);
        criteria.where(predicates);
        criteria.orderBy(builder.asc(root.get("nome")));

        criteria.select(builder.count(root));


        return manager.createQuery(criteria).getSingleResult();
    }

    private void adicionasrestricoesdepaginacao(TypedQuery<Animal> query, Pageable pageable){
        int paginaatual = pageable.getPageNumber();
        int totalregistrospagina = pageable.getPageSize();
        int primeiroregistropagina = paginaatual * totalregistrospagina;

        query.setFirstResult(primeiroregistropagina);
        query.setMaxResults(totalregistrospagina);
    }

    private Predicate[] criarrestricoes(AnimalFilter animalfilter, CriteriaBuilder builder, Root<Animal> root){

        List<Predicate> predicates = new ArrayList<>();

        if (!StringUtils.isEmpty(animalfilter.getNome())){
            predicates.add(builder.like(builder.lower(root.get("nome")),
                    "%" + animalfilter.getNome().toLowerCase() + "%"));
        }

        if (!StringUtils.isEmpty(animalfilter.getSexo())){
            predicates.add(builder.like(builder.lower(root.get("sexo")),
                    "%" + animalfilter.getSexo().toLowerCase() + "%"));
        }

        if(animalfilter.getIdade() != null){
            predicates.add(builder.equal(root.get("idade"), animalfilter.getIdade()));
        }

        if(animalfilter.getPorte() != null){
            predicates.add(builder.equal(root.get("porte"),animalfilter.getPorte()));
        }

        return predicates.toArray(new Predicate[predicates.size()]);
    }
}
