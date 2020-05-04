<?php

namespace App\Repository;

use App\Entity\BusinessWorkPlan;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method BusinessWorkPlan|null find($id, $lockMode = null, $lockVersion = null)
 * @method BusinessWorkPlan|null findOneBy(array $criteria, array $orderBy = null)
 * @method BusinessWorkPlan[]    findAll()
 * @method BusinessWorkPlan[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BusinessWorkPlanRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, BusinessWorkPlan::class);
    }

    // /**
    //  * @return BusinessWorkPlan[] Returns an array of BusinessWorkPlan objects
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
    public function findOneBySomeField($value): ?BusinessWorkPlan
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
