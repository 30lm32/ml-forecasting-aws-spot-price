![Image](http://www.actoncloud.com/blog/wp-content/uploads/2017/08/aws-spot-instance.png)

### Forecasting AWS Spot Price by using Adaboosting on Rapidminer

|__Problem__|__Data__|__Methods__|__Libs__|__Link__|
|-|-|-|-|-|
|`Forecasting, Timeseries Analysis`|AWS EC2 Spot Price|`Adaboost Classifier`, `Decision Tree`|`Rapidminer`|https://github.com/erdiolmezogullari/ml-forecasting-aws-spot-price|

### Proposal
In our project, we will use public data, which was collected by third party people and released through some specific websites. Since our data will be mainly related to Amazon Web Services’ (AWS) Elastic Computing (EC2), it will be consisting of some different fields. EC2 is a kind of virtual machine in the AWS’s cloud.  
A virtual machine can be created just in time either on private or public cloud over AWS whenever you need it. A new virtual machine can be picked with respect to different specs and configurations in terms of CPU, RAM, storage, and network band limit before creating it once from scratch. EC2 machines also are separated and managed by AWS on different geographical regions (US East, US West, EU, Asia Pacific, South America) and 
zone to increase availability of virtual machines across the world. AWS has different segmentations, which were classified with respect to system specs by AWS for based on different goals (macro instance, general purpose, compute optimized, storage optimized, GPU instance, memory optimized).  Payment options are dedicated, on­demand and spot instance. Since they make different cost to customer’s operation, customers may
prefer different kinds of virtual machine according to their goals and budgets.  In general, spot instance is cheaper than the rest of the options. However, spot instance may be interrupted if market price exceeds our max bid.  
In our research, we will focus on spot instance payment. Our aim in this project will be selecting correct AWS instance from the Spot Instance Market according to the requirement of the customer. We plan to perform Decision Tree on streaming data to make a decision on the fly. It may be implemented as an incremental version of decision tree since data is changing continuously

### First Glance to Data
We retrieved Amazon Spot Price data which was collected by a third party person. Data was basically separated to epoch by day-wise. Each epoch has 5 fields <Timestamp, ProductDescription, InstanceType,SpotPrice, AvailabilityZone> in JSON format. At the beginning of the data mining process, we wrote a simple shell script in Linux so that we transform the data to CSV format. According to data fields, Timestamp (TS) is a time when the data was collected. Product Description (PD) is referring to kind of
operating system on an instance of Virtual Machine (VM) where Operating System will be installed according to customer’s demands. It is consisting of 6 unique operating systems. Instance type (IT) is referring to type of VM. Since IT can be picked with respect to business’ goal of customer, it was taken down into wide brands with 33 unique VM types by AWS. Spot Price (SP) is showing the current market price for each IT and Availability Zone (AZ). AZ is consisting of 22 unique zones in different countries
across the world.

### Conclusion

It is possible to help customers for offering thecorrect price range according to their demands,
time of day and machine type
• This information will help for customers to give
the best possible price and decrease their cost of
cloud services usage
• In future work,
– at the end of the this process, a emergence rules can
be revealed by using rule induction.
– This project can be implemented by using stream
processing technologies (e.g. Esper, Apache Spark)
