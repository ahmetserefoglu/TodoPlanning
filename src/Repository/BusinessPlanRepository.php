<?php

namespace App\Repository;

use App\Entity\BusinessPlan;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method BusinessPlan|null find($id, $lockMode = null, $lockVersion = null)
 * @method BusinessPlan|null findOneBy(array $criteria, array $orderBy = null)
 * @method BusinessPlan[]    findAll()
 * @method BusinessPlan[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BusinessPlanRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, BusinessPlan::class);
    }

    // /**
    //  * @return BusinessPlan[] Returns an array of BusinessPlan objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('b.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?BusinessPlan
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
