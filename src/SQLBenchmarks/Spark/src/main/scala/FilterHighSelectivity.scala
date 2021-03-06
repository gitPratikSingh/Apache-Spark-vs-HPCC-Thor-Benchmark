import org.apache.spark.{SparkContext, SparkConf}
import org.apache.spark.sql.types.StructType
import org.apache.spark.sql.types.{IntegerType, StringType}

object FilterHighSelectivity {
  def main(args: Array[String]) {
//    val conf = new SparkConf().setAppName("FilterHighSelectivity Application").setMaster("local")
    val conf = new SparkConf().setAppName("FilterHighSelectivity Application")

    val sc = new SparkContext(conf)
    val sqlContext = new org.apache.spark.sql.SQLContext(sc)
    val fileName = args(0)
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
      val wudf = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_int).load(fileName)
      wudf.registerTempTable("wutable")
    }
    else
    {
       val wudf = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_string).load(fileName)
       wudf.registerTempTable("wutable")

    }
      
 
    ////filter queries
    
    //high selectivity
    val selectivity_high = time{sqlContext.sql("select * from wutable where _c0=\"53800\"")}
    //selectivity_high.printSchema()
    val c = selectivity_high.count()
    println(s"Query Finished: Filter query with high selectivity - there are $c lines here.")
    
   
    
   
   //StoppingSpark context
   sc.stop()
  }
}