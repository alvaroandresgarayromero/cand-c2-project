A decrease in budget to $6,500 would intially push the architect to search for AWS service solutions that are cheaper in price without penalizing the current redundancy, and performance of the infrastructure. However, if the above is not possible, then the architect would need to start evaluating which services to reduce in terms of compute, storage, and security (if any). 

The cost for EC2 instances can be drastically reduced by updating the pricing model from "On-Demand Instances" to "EC2 Instance Savings Plans." Next, the allocated storage memory for the database can be reduced as well as the processed bytes per CLB in the elastic load balancer. However, this is risky without quantifying the user's usuage activities in and out from the application.  
20
