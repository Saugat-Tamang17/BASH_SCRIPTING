# Cloud Service Models: Quiz and Response Record

Topics covered: IaaS, PaaS, SaaS, FaaS (serverless), CaaS, DBaaS, shared responsibility model, and cloud deployment models.

Date: 2026-11-07

---

## Part 1: Multiple-Choice Quiz

Note: this quiz was taken in the interactive quiz card. The card tracked the answers on screen, but they were not shared back in the chat, so the "Your response" lines below are left empty for you to fill in. The correct answers and explanations are included for review.

### Question 1
A company wants full control over the operating system and installed software on virtual servers, without buying physical hardware. Which service model fits best?

- a) SaaS
- b) IaaS
- c) PaaS
- d) FaaS

Your response:
Correct answer: b) IaaS

Explanation: IaaS provides virtual machines, storage, and networking. The customer manages the OS, middleware, runtime, and applications, while the provider manages the physical hardware and virtualization.

### Question 2
Heroku and Google App Engine are examples of which cloud service model?

- a) IaaS
- b) SaaS
- c) PaaS
- d) DaaS

Your response:
Correct answer: c) PaaS

Explanation: PaaS gives developers a ready-made platform for building and deploying apps. The provider handles servers, OS, and runtime, so developers focus on code.

### Question 3
In a SaaS product like Gmail, what is the customer still responsible for?

- a) Patching the operating system
- b) Maintaining the physical servers
- c) Updating the application code
- d) Their own data, user accounts, and access settings

Your response:
Correct answer: d) Their own data, user accounts, and access settings

Explanation: Under the shared responsibility model, the provider runs the whole stack in SaaS, but the customer remains accountable for their data, who can access it, and how it is configured.

### Question 4
How is serverless computing (FaaS) such as AWS Lambda typically billed?

- a) For the time and resources used while your functions execute
- b) A flat monthly fee per server
- c) Per user license
- d) A one-time upfront hardware payment

Your response:
Correct answer: a) For the time and resources used while your functions execute

Explanation: With FaaS you upload small functions that run in response to events, and you pay only for execution time. Servers still exist, but the provider manages them entirely.

### Question 5
Which deployment model combines a private cloud with a public cloud, letting data and apps move between them?

- a) Multi-cloud
- b) Public cloud
- c) Hybrid cloud
- d) Community cloud

Your response:
Correct answer: c) Hybrid cloud

Explanation: Hybrid cloud mixes private and public environments, for example keeping sensitive data in a private cloud while using the public cloud for scale. Multi-cloud instead means using several public cloud providers.

---

## Part 2: Yes/No Questions with Reasons

Instructions given: answer Yes or No and give a reason for each.

### Question 1: IaaS
Question: In IaaS, is the customer responsible for managing the operating system?

Your response:
IaaS meaning the infrastructure as a Service , is the type of cloud service given to the customer where only the infrastructure or the key components of the hardware such as networking , hardwares like database or the virtual machines etc , in short only the barebone things are given to the customer , the customer has to figure out the architecture of their product , the OS they will be using , the codebase the OS update logs and the data ,everything is to be handled by them so yeah , the customer is responsible for managing the operating system in the IaaS

Answer: Yes (correct)
Feedback: Strong reasoning. One small fix: IaaS provides virtual machines, storage, and networking. A managed database is usually DBaaS. If you run a database on an IaaS virtual machine, you install and maintain it yourself.

### Question 2: PaaS
Question: In PaaS, does the customer still have to patch and maintain the OS?

Your response:
in the PaaS , the providers are now going to provide you with a platform or kind of already laid out ready made stage for the customers , they are going to be working on that platform in order to make their applications and the codebases  , its just IaaS but now wit hadded support of OS and OS patch updates / middlewares and runtime applications , so no the customer doesnt have to maintain and patch update their OS

Answer: No (correct)
Feedback: Strong reasoning. In PaaS the provider manages the OS, middleware, and runtime on top of the infrastructure.

### Question 3: PaaS examples
Question: Is Heroku a good example of PaaS?

Your response:
yes ,it is widely considered a good and popular pick for the PaaS sercice in the cloud world

Answer: Yes (correct)
Feedback: Correct answer, but the reason is thin. A stronger reason: Heroku lets developers push code while it handles the servers, OS, and runtime, which is exactly what PaaS means.

### Question 4: SaaS
Question: In SaaS, is the customer free of all responsibility for their data?

Your response:
in SaaS , the whole software is given to the customer , in a leased manner or say rented in respective time , the customers are now only suppose to keep share of their data or the business data in safe manenrs and other things are handled by the providers , for example providing a website dashboard for a business where the whole software is laid out and the customer work is now maintaining the data , so no still in SaaS the customer is not free of the responsiblity of handling data

Answer: No (correct)
Feedback: Strong reasoning. The customer remains accountable for their data, user accounts, and access settings.

### Question 5: SaaS examples
Question: Is Amazon EC2 an example of SaaS?

Your response:
amazon's cloud or aws 's service EC2 is not SaaS but rather the IaaS

Answer: No, it is IaaS (correct)
Feedback: Correct. EC2 provides virtual servers, which is infrastructure.

### Question 6: Shared responsibility
Question: Does the shared responsibility model mean the provider handles all security, whatever the service model?

Your response:
No, in the shared responsibility model , there is always a explicit division of security in the cloud where , providers are supposed to maintain the security of the cloud and the customers are supposed to maintain the secuity inside the cloud , its never one sided

Answer: No (correct)
Feedback: Very strong. The split between security of the cloud (provider) and security in the cloud (customer) is exactly the idea.

### Question 7: FaaS / serverless
Question: Does "serverless" mean no servers are involved at all?

Your response:
the servers are involved in the FaaS/Serverrless model but you as a customer cant manage or maintainn it , you just send the function and the server runs it and in this scheme you are to pay perfunction runtime

Answer: No (correct)
Feedback: Strong. Servers still exist, but the provider manages them, and billing is based on function execution time.

### Question 8: CaaS
Question: Is Kubernetes commonly used to orchestrate containers in CaaS offerings?

Your response:
Yes. Kubernetes is the de facto industry standard for container orchestration and underpins virtually every major CaaS offering.

Answer: Yes (correct)
Feedback: Correct, but slightly overstated. "Virtually every" is too strong, since Amazon ECS is a major CaaS service with its own orchestrator and no Kubernetes underneath. Safer wording: most major CaaS offerings are built on Kubernetes.

### Question 9: DBaaS
Question: With a DBaaS like Amazon RDS, does the provider take care of things like backups and patching?

Your response:
yes, with the Amazon RDS , the provider take care of the following things : automated backups ,patching of software and failue detection and recovery

Answer: Yes (correct)
Feedback: Strong. Managed backups, patching, and failure recovery are the core value of DBaaS.

### Question 10: Deployment models
Question: Are hybrid cloud and multi-cloud the same thing?

Your response:
no the primary distinction in between them comes in what they are mixing in the types :

for example the hybrid cloud is the mixture of private + one or more public clouds and the mutilclouds are just the collection of the more public clouds

Answer: No (correct)
Feedback: Strong. Hybrid mixes private and public; multi-cloud uses several public providers.

---

## Score Summary

| Section | Result |
|---|---|
| Part 1: Multiple-choice quiz | Responses not recorded |
| Part 2: Yes/No with reasons | 10 out of 10 answers correct |
| Part 2: Reasoning quality | 8 fully solid, 2 needing small tweaks (Q1 and Q3), plus a wording fix on Q8 |

## Review Points

- Managed databases belong under DBaaS, not the basic IaaS building blocks (virtual machines, storage, networking).
- When explaining why an example fits a model, state what the provider manages for the customer, not just that it is popular.
- Avoid absolute words such as "virtually every" unless it is strictly true.

## Topics Not Yet Covered

- BaaS (Backend as a Service)
- DaaS (Desktop as a Service)
- Benefits and challenges of cloud computing
- Scenario-based questions (choosing a model for a given situation)
