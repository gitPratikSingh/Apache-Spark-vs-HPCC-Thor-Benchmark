import org.apache.spark.{SparkContext, SparkConf}
import org.apache.spark.sql.types.StructType
import org.apache.spark.sql.types.{IntegerType, StringType}

object Join {
  def main(args: Array[String]) {
//    val conf = new SparkConf().setAppName("Join Application").setMaster("local")
    val conf = new SparkConf().setAppName("Join Application")

    val sc = new SparkContext(conf)
    val sqlContext = new org.apache.spark.sql.SQLContext(sc)
    val fileName1 = args(0)
    val fileName2 = args(1)
    val datatype = args(1) //1 for int, 0 for string
    
    def time[R](block: => R): R = {  
      val t0 = System.nanoTime()
      val result = block    // call-by-name
      val t1 = System.nanoTime()
      println("Elapsed time: " + (t1 - t0) + "ns")
      result
    }
    
    val customSchema_int = new StructType().add("_c0", IntegerType).add("_c1", IntegerType)
    
    val customSchema_string = new StructType().add("_c0", IntegerType).add("_c1", StringType)
    
     if(datatype==1)
    {
      val wudf1 = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_int).load(fileName1)
      wudf1.registerTempTable("wutable1")
      
      val wudf2 = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_int).load(fileName2)
      wudf2.registerTempTable("wutable2")
    }
    else
    {
      val wudf1 = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_string).load(fileName1)
       wudf1.registerTempTable("wutable1") 
      
      val wudf2 = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_string).load(fileName2)
       wudf2.registerTempTable("wutable2")

    }
    
//    val wudf1 = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").option("inferSchema", "true").load(fileName1)
//    wudf1.registerTempTable("wutable1")
//    
//     val wudf2 = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").option("inferSchema", "true").load(fileName2)
//    wudf2.registerTempTable("wutable2")
      
 
    
  
    ////join queries
    
    //inner join
    val innerjoin_int = time{sqlContext.sql("select * from wutable1 inner join wutable2 on wutable1._c0=wutable2._c0")}
    val c = innerjoin_int.count()
    println(s"Query Finished: Join query - there are $c lines here.")
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
   
    
 
   
   //StoppingSpark context
   sc.stop()
  }
}