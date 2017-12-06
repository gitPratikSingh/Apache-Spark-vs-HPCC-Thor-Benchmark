import org.apache.spark.{SparkContext, SparkConf}
import org.apache.spark.sql.types.StructType
import org.apache.spark.sql.types.{IntegerType, StringType}

object AggregateMax {
  def main(args: Array[String]) {
//    val conf = new SparkConf().setAppName("AggregateMax Application").setMaster("local")
    val conf = new SparkConf().setAppName("AggregateMax Application")

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
      
 
    
    ///////aggregate queries
    
  
    
    //max
    val max_int = time{sqlContext.sql("select max(_c0) from wutable")}
    val c = max_int.count()
    println(s"Query Finished: Max query - there are $c lines here.")
    

    
   
   //StoppingSpark context
   sc.stop()
  }
}