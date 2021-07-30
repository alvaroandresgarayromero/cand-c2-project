An increase in budget to $20,000 would allow the architect to improve redundancy, performance, and security on the current infrastructure. 

I could add some disaster recovery capabilities by introducing a hot standby EC2 instance and a read-replica-databases in a second region to improve redundancy. (+1 EC2, +1 database)

NAT gateways would increase by one for the new region (+1 NAT gateway)

Load Balancer can be introduced in the new region (+2 elastic load balancers) 

Security could be improved by adding firewalls at the OS-level by utilizing third-party tools, and also adding AWS Web Applicaotin Firewall service to protect web applications. 

Lastly, I could introduce elastic cache with cloundfront to improve the latency performance on the active application (+1 elastic cache)




