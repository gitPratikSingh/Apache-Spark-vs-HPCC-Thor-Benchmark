import org.apache.spark.{SparkContext, SparkConf}
import org.apache.spark.sql.types.StructType
import org.apache.spark.sql.types.{IntegerType, StringType}

object AggregateAvg {
  def main(args: Array[String]) {
//    val conf = new SparkConf().setAppName("AggregateAvg Application").setMaster("local") //removing 'local' to run on cluster
    val conf = new SparkConf().setAppName("AggregateAvg Application").setMaster("local") //removing 'local' to run on cluster

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
    
//    val customSchema = StructType(Array(
//    StructField("project", StringType, true),
//    StructField("article", StringType, true),
//    StructField("requests", IntegerType, true),
//    StructField("bytes_served", DoubleType, true)))
    
    val customSchema_int = new StructType().add("_c0", IntegerType).add("_c1", IntegerType)
    

    
    val wudf = sqlContext.read.format("com.databricks.spark.csv").option("header", "false").schema(customSchema_int).load(fileName)
    wudf.registerTempTable("wutable")
 
    
    ///////aggregate queries
    

    
    //average
    val avg_int = time{sqlContext.sql("select avg(_c0) from wutable")}
    val c = avg_int.count()
    println(s"Query Finished - there are $c lines here.")
    

    
   
   //StoppingSpark context
   sc.stop()
  }
}