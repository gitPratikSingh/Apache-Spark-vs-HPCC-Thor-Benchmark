import org.apache.spark.{SparkContext, SparkConf}

object SparkBenchmark {
  def main(args: Array[String]) {
    val conf = new SparkConf().setAppName("SparkBenchmarkAllQueries Application")
    val sc = new SparkContext(conf)
    val sqlContext = new org.apache.spark.sql.SQLContext(sc)
    val fileName = args(0)
    
    def time[R](block: => R): R = {  
      val t0 = System.nanoTime()
      val result = block    // call-by-name
      val t1 = System.nanoTime()
      println("Elapsed time: " + (t1 - t0) + "ns")
      result
    }
    
    val wudf = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").option("inferSchema", "true").load(fileName)
    wudf.registerTempTable("wutable")
      
    var select_low = time{sqlContext.sql("select * from wutable where _c0=19107")}
    val c1 = select_low.count()
    println(s"Count query finished - there are $c1 lines here.")
    
    //high selectivity
    val selectivity_high = time{sqlContext.sql("select * from wutable where _c0=53800")}
    //selectivity_high.printSchema()
    val c2 = selectivity_high.count()
    println(s"Filter Query finished - there are $c2 lines here.")
    
    ///////aggregate queries
    
    //count distinct
    val count_distinct = time{sqlContext.sql("select count(distinct _c0) from wutable")}
    val c3 = count_distinct.count()
    println(s"Distinct Query finished - there are $c3 lines here.")
    
    
    //min
    val min_int = time{sqlContext.sql("select min(_c0) from wutable")}
    val c5 = min_int.count()
    println(s"Min Query finished - there are $c5 lines here.")
    
    //max
    val max_int = time{sqlContext.sql("select max(_c0) from wutable")}
    val c6 = max_int.count()
    println(s"Max query finished - there are $c6 lines here.")
    
    //average
    val avg_int = time{sqlContext.sql("select avg(_c0) from wutable")}
    val c7 = avg_int.count()
    println(s"query 7 finished - there are $c7 lines here.")
    
    //sum
    val sum_int = time{sqlContext.sql("select sum(_c0) from wutable")}
    val c8 = sum_int.count()
    println(s"query 8 finished - there are $c8 lines here.")
    
    //group by
    val groupby_int = time{sqlContext.sql("select count(_c1) from wutable group by _c0")}
    val c9 = groupby_int.count()
    println(s"query 9 finished - there are $c9 lines here.")
     
//    ////join queries
//    
//    //inner join
//    val innerjoin_int = sqlContext.sql("select wutable.key, wutable.fill from wutable inner join wutable2 on wutable.key=wutable2.key")
//    val c10 = innerjoin_int.count()
//    println(s"query 10 finished - there are $c10 lines here.")
//    
//    //left join
//    val leftjoin_int = sqlContext.sql("select wutable.key, wutable.fill from wutable left join wutable2 on wutable.key=wutable2.key")
//    val c11 = leftjoin_int.count()
//    println(s"query 11 finished - there are $c11 lines here.")
//    
//    //right join
//    val rightjoin_int = sqlContext.sql("select wutable.key, wutable.fill from wutable right join wutable2 on wutable.key=wutable2.key")
//    val c12 = rightjoin_int.count()
//    println(s"query 12 finished - there are $c12 lines here.")
//    
//    //full outer join
//    val fullouterjoin_int = sqlContext.sql("select wutable.key, wutable.fill from wutable full outer join wutable2 on wutable.key=wutable2.key")
//    val c13 = fullouterjoin_int.count()
//    println(s"query 13 finished - there are $c13 lines here.")
   
    
    //sorting on random dataset
    val orderby_int = time{sqlContext.sql("select * from wutable order by _c0")}
    val c14 = orderby_int.count()
    println(s"query 14 finished - there are $c14 lines here.")
    
   
   //StoppingSpark context
   sc.stop()
  }
}