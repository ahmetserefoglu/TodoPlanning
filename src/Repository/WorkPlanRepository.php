<?php

namespace App\Repository;

use App\Entity\WorkPlan;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method WorkPlan|null find($id, $lockMode = null, $lockVersion = null)
 * @method WorkPlan|null findOneBy(array $criteria, array $orderBy = null)
 * @method WorkPlan[]    findAll()
 * @method WorkPlan[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class WorkPlanRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, WorkPlan::class);
    }

    // /**
    //  * @return WorkPlan[] Returns an array of WorkPlan objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('w')
            ->andWhere('w.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('w.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?WorkPlan
    {
        return $this->createQueryBuilder('w')
            ->andWhere('w.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
