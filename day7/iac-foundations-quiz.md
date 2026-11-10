# Infrastructure as Code: Foundations Quiz Notes

Questions are from Claude. Answers are copied exactly as written, typos included.

---

# Part 1: Topic 1, What IaC is and why it exists

## Yes/No + reason

**Q1. Is IaC just writing shell scripts that run commands in order?**

1. no iac is just njnot writing shell scripts that run the commands in order , while it is kind of the part of the IaC , the shell scripting is just the imperative process ( i.e you build and add the things with no particular or definite goal as of now ) meanwhile the IaC is the declarative , you need to describe what the final state of the infrastructure should look like ( i.e i need 3 servers , a DB and a load balancer )

**Q2. Would manual point-and-click administration have worked fine in an old private data center? Why or why not?**

2. it could have had worked in the old private data center , because surely if it was running by the private company in the old times , my consensus is that they wouldn't have to reason with 1000s of tickets from the customers and admin could have had ease of use not missing the deadlines ,sure the human error is inevitable ( admin ) but yeah the errors would have been negligible with less amount of ticket cases

**Q3. Does cloud being "API-driven" make IaC possible?**

3. yes , the cloud being API-driven makes the IaC possible because of the following reasons :
i. it reduces the human intervention because the cloud services are now programmatic CRUD since they expose the endpoints
ii. clouds can provide the GET endpoints to query live resource states which allows for the IaC too lto compare the actual state of your infrastructure in the cloud against your desired state written in code

**Q4. Is it realistic to manage 1,000 short-lived servers through a ticket queue?**

4. no it is not realistic even in the slightest bit for a admin to manage 1000 short lived serves through a ticket queue, it would just cause two things:
i. operational bottleneck/ response latency because of the fact that the admin simply cannot serve in that required FAST response.
ii. server might die in wait of its servicing

**Q5. Does storing infrastructure definitions in version control give you a history of who changed what?**

5. yes , if the Iac is stored in the forma of version control then it gives you a history of who changed what

**Q6. Is IaC only useful for large companies?**

6. no , IaC is also resourceful and helpful for the small companies as well because i. using the IaC will give the benefit of instant disaster recovery i.e through version control ii. control over the environment as you can activate or destroy the cloud services whenever needed or not needed saving the resources and money , iii.IaC will also serve as the explicit or version controlled documentation so when new developer or configurer comes they can read the documentation .

**Q7. Can IaC work with both on-premises and cloud infrastructure?**

7. Infrastructure as Code is not restricted to public cloud providers like AWS, Azure, or Google Cloud. The core concept of IaC—defining infrastructure in code and executing it via APIs—applies anywhere an API or automation layer exists.on premises would install an abstraction or virtualization layer that exposes APIs to the IaC engine

## Descriptive

**Q8. Explain how infrastructure was traditionally managed, step by step.**

1. traditionally, you file a ticke and an admin would have clicked through the console and reviewed your ticket and resolved it, it worked when the request count of the tickets were not thta much and the VMs were few / big / much longer living

**Q9. Name three things that changed with the cloud (elasticity, scale, and so on) and explain how each made manual management harder.**

2. the things that changed with the cloud are as follows :
i. short living resources :
in the traditional on premises data centers ,the servers were a longliving and static Ip address /name hostnames which had their lifespan measured in years , so the human resouces wouldn't have any problem with keeping up the ticket servicing. But since the cloud intervention, the resources ( servers or spot VM's ) has been really short life spanned for example like a min / hour or even a second. manual management now failed here because of the ticketing overhead and orphaned infrastructures
ii. elasticity : the infrastructure changed form the dozen of the static physical servers to hundred or thousands of the cloud servers like load balancers ,containers which have dynamic ability to scale up and down based of on the demand pr the real time application load.
manual management failed here because their static Server were not able to keep up with the flux increase in the traffic and their inability to automatically increase or decrease their scaling based off on the application .

iii.The Cloud Shift: Infrastructure evolved from monolithic building blocks (a server box and a rack switch) into dozens of fine-grained cloud services. A single modern web application relies on managed databases, object stores, IAM roles, security groups, routing tables, API gateways, and serverless events—all managed programmatically via HTTP APIs.

Why Manual Management Failed:

Combinatorial Complexity ("ClickOps" Fatigue): Setting up an application manually now requires hundreds of precise button clicks across multiple web consoles. A single missed checkbox in an IAM policy or security group can break the application or create a critical security vulnerability.

Lack of Visibility & Auditability: When multiple engineers manually adjust cloud console settings to troubleshoot issues, there is no version control, code review process, or reliable history of who changed what, making root-cause analysis nearly impossible.

**Q10. What does "oral tradition" mean in the context of infrastructure, and how does IaC fix it?**

3. oral tradition refers to the setup where the critical knowledge about how the server works or how the networks are configured etc , all of these things are only known by either one person and they passed it down to other juniors by word of mouth or random slack messages at 2am or outdated Wikipedia page . the problem with the oral tradition is that : if that person leaves the company for X amount of time ,then the whole system can be considered volatile and vulnerable as nobody exactly knows how the system is running. second problem might be the environment drifts, meaning if the non educated people try to handle the system , then the actual product right now might deviate from the goal product . by non educated i mean the devs or engineers who dont know about the infrastructure of the system

this is how the IaC solves it :
ORAL TRADITION                             INFRASTRUCTURE AS CODE
┌─────────────────────────┐                ┌─────────────────────────┐
│  Tribal Knowledge       │                │  Git Repository         │
│  • Memory & Rumors      │   Transforms   │  • Explicit HCL/YAML    │
│  • Outdated Wiki Pages  │ ─────────────► │  • Version History      │
│  • Manual Console Clicks│                │  • Peer Code Reviews

---

# Part 2: Combined topic, IaC fundamentals (benefits, declarative vs. imperative, idempotency, drift)

## Yes/No + reason

**Q1. Does a declarative tool require you to write the steps to reach the target state?**

1. no in the declarative tooling ,you specify your goals first or the desired target state of the infrastructure, not the steps to achieve or to reach the desired goal state, for example in declarative : you dont say i want VM1 and then after , VM2 and then VM3 , it is imperative . in the declarative one , you just say i want 3 VM . one detail to distinguish between these 2 is declarative will demand "WHAT"
and imperative will demand " how ? " and there should be no automatic environmental drift and in the imperative there might be an environmental drift

**Q2. If a script says "add 3 servers" and you run it twice, do you end up with the same infrastructure as running it once?**

2. depends on given the structure is idempotent or not, if the server is idempotent then the script will result in nothing given the fact that there are already 3 servers required i.e same infrastructure, and then if the server is not idempotent , then it will add more 3 servers changing the structure of the infrastructure.

**Q3. Can configuration drift happen even when your infrastructure was originally built from code?**

3. it could happen even tho the infrastructure was built from code because of the following reasons :
i. there could be a oral tradition happening and if the senior dev who only knows about the system then if other try to fix the problem from it then they could make changes i.e drifting from the original desired state.
ii. unamanged 3rd party tools or ad -hoc CI/CD scripts or kind of cron jobs wiull modify the resources outside of the IaC engine's pipeline
iii. manual emerygency fixes :An engineer logs into the cloud console (AWS, Azure, GCP) or SSHs into a server to manually fix a production outage, change a security group rule, or increase resource limits—and forgets to port those changes back to the IaC repository.
Partial or Failed Deployments

iv. A deployment pipeline fails halfway through, leaving some resources updated and others in an intermediate, unrecorded state.

Because declarative IaC tools track desired state vs. actual state, they are uniquely equipped to handle drift when it happens ( version control in short )

**Q4. Does IaC guarantee zero human error?**

4. IaC is still fundamentally a human product meaning that the errors are inevitable , while the errors caused by the manual management and configuration of the resources are vastly reduced it still wouldn't mitigate the error on the code side tho , i.e following errors are to be expected here :
i. flawed code and bugs in configuration process
ii. blindly approving of the execution plans by the declerative tools ( without any reviews )
iii. inadequate testing and validation on the final deployment process
iv. state file correuption and mismanagement of the resouces in the backend or for example manuallyy editign the raw json files

**Q5. Is imperative always worse than declarative?**

5. no imperative is not inherently worse than the declarative approach, they are just different paradigms designed for the different operation needs .
imperative strngth comes in the whole control of the environment meaning precise execution flow , conditional logic and sequential steps so that you can later on think if your goal changed or not whiule its lose is at the drift risk and maintainence later on , you would use it for Low Level programming or sequential operational task that supposes you handle all of the edge cases possible
declarative strength is in its state consistency that prevents the state/ configuration drifts and calculates how to reach the desired step while its lose is at the state lock/rigidity  that makes it hard to express the coplex procedural logic runtime brancing or sequence dependent executions .  it is best to be used for provisioning and managing the long lived static resources

## Descriptive

**Q6. Explain declarative vs. imperative with a real-life analogy (not one already used). Then say which you'd prefer for provisioning, and why.**

1. most of the thing is already answered in the previous questions .
now to put it in the real life analogy :
suppose you are a customer in the restaurant and you need to eat a steak
declarative approach : " i want a steak with fries and compound cream for the sides " in this approach you would not care what kind of methods are used to bring you the dish for example if the burner is okay , on what temperature your grill is set at , the order of the ingredients that are passed on etc etc.
suppose you now want a burger instead of the steak

imperative approach would be : 
"Turn on burner 2 to medium heat."

"Place the patty on the grill for 3 minutes."

"Flip the patty."

"Slice a piece of cheddar and place it on top for 1 minute."

"Toast the bun."

"Assemble the burger without onions."
this sounds more like a chef thing honestly

declerative is more of a fitting paradigm approach for the provisioning because of the following reasons ":
i. idempotency out of the box
ii. self healing state and drift reconciliation

**Q7. Scenario: A sysadmin opens port 22 to the whole internet on a production firewall to debug an issue and forgets to close it. Using IaC concepts, what is this called, why is it dangerous, and how would an IaC workflow detect or prevent it?**

2. this is the example of the configuration drift or clickops failure where the actual live state of the infrastructure ( port 22 opened to 0.0.0.0/0 or global internet ) is not the defined target state of the infrastructure ( port 22 closed or restricted to open for specific parts of internet )
this brings in the following risk :
i. exposes to the internet might cause a high value attack surface llike automated botnets , port scanners , or attackers to launch immediate brute force attack and exploit , i think this was what happened with the vibe coding projects more often and even vercel was a victim like this i like to believe

ii. manual emergency fixes aer easy to forget and without the continuos tracking, an open SSH port can remain undetected for months until finally a breach happens

the IaC engine or workflow or piepeline whatever you call it fix it using the following steps :
1. drift detection :
comapres the live infrastructe of the code / API before and after the deployment to check if the version that is deployed and the version that is in the git  or version control is same and compares  them

2. scheduled pipeline runs
instead of waitig for the engineer to deploy the code, the CI?CD pipelines like GitHub actions or terraform w, would run the scheduled drifting detection jons

3. shift left security and Policy as Code (PaC ): Preventative guardrails stop bad security rules from ever being committed or applied:

**Q8. Pick any three IaC benefits. For each, name the specific manual-world problem it fixes.**

question 3 :
1. Repeatable & Environment Consistency
Manual-World Problem: "Works on my machine / Staging doesn't match Production"

Manual setup requires engineers to follow documentation, click through web consoles, or run ad-hoc commands on individual servers. Missing a single environment variable, software dependency, or firewall flag creates subtle configuration mismatches between development, staging, and production environments—causing bugs that only appear in production.

How IaC Fixes It: A single code template defines the environment. Deploying identical copies across development, staging, and production guarantees byte-for-byte consistency every time.

2. Version Control & Auditability
Manual-World Problem: "Who changed this rule, when, and why?"

In a manual environment, configuration edits happen directly inside cloud consoles or server SSH sessions. Unless the engineer manually logs the change, there is no reliable record of who modified a setting, when it happened, or what the previous state was, making root-cause analysis during outages a guessing game.

How IaC Fixes It: Infrastructure is stored in Git. Every modification requires a pull request, leaving an immutable git log of author, commit history, peer code review approvals, and exact line-by-line diffs. Rolling back a bad change is as simple as running git revert.

3. Automated Speed & Scalability
Manual-World Problem: Provisioning bottlenecks and slow lead times

Spinning up new environments or scaling capacity manually requires filling out ticketing requests, waiting for ops teams, and sitting through hours of manual provisioning steps. This creates operational friction, slows product releases, and introduces human fatigue.

How IaC Fixes It: Provisioning is triggered automatically via code or CI/CD pipelines. Entire multi-region architectures containing hundreds of interconnected resources (networks, databases, virtual machines) can be deployed in minutes with zero manual intervention.

---

# Summary: What I Learnt

## 1. Why IaC exists
- Traditional infrastructure meant filing a ticket, then an admin clicking through a console. That worked while VMs were few, long-lived (months to years), and rarely changed.
- The cloud changed four things:
  - It is **API-driven**, so everything can be created programmatically.
  - It is **elastic**, so resources live for days or weeks, or even minutes.
  - It is **bigger**, with many small instances and many fine-grained services (IAM, security groups, routing, databases, and so on).
  - It is **cyclical**, so you scale up and down and pay by the hour.
- At that scale and speed, tickets and clicking create bottlenecks, "ClickOps" fatigue (one missed checkbox can break things or open a security hole), and no audit trail.
- IaC captures the clicks as code so the work can be repeated, automated, versioned, and reviewed.

## 2. Oral tradition vs. code
- "Oral tradition" means the setup knowledge lives in one person's head, in old wiki pages, or in 2am chat messages. If that person leaves, nobody knows how the system works (the bus factor), and untrained people's changes cause drift.
- IaC replaces this with a Git repository where the definition is explicit, has version history, and is peer reviewed. The code is the documentation.

## 3. Why the API matters
- The cloud's write endpoints (create, update, delete) let tools build infrastructure.
- Its read endpoints (GET) let tools check live state against the desired state in code.
- Any environment with an API or automation layer can use IaC, including on-premises setups like VMware.

## 4. Declarative vs. imperative
- **Declarative** describes the **what**: "I want 3 servers, a DB, and a load balancer." The tool works out the steps.
- **Imperative** describes the **how**: step-by-step instructions, as in a shell script.
- Declarative suits provisioning because it is idempotent and can detect and reconcile drift. Imperative gives more control over flow and conditional logic, but it is harder to maintain and more prone to drift.
- Neither is always better. They suit different jobs.

## 5. Idempotency
- Running an idempotent operation once or ten times gives the same result. "Make sure there are 3 servers" is idempotent, and "add 3 servers" is not.
- It makes re-running automation after a failure safe.

## 6. Configuration drift
- Drift means live infrastructure no longer matches the defined state.
- Causes: manual emergency fixes in the console or over SSH, unmanaged scripts or cron jobs changing resources outside the pipeline, oral-tradition fixes, and partial or failed deployments.
- Example: port 22 opened to 0.0.0.0/0 for debugging and then forgotten. This is a real attack surface, and it can go unnoticed for months.
- Defenses: drift detection (compare live state to the code), scheduled pipeline runs, and Policy as Code to block insecure rules before they are applied.

## 7. IaC does not remove human error
- It reduces manual mistakes, but bugs in the code, blindly approved plans, weak testing, and state corruption or manual state edits can still cause problems.
- Review the plan, test, and protect state.

## 8. Benefits I can explain with the manual-world problem each one fixes
| Benefit | Manual-world problem it fixes |
|---|---|
| Repeatability and consistency | "Staging doesn't match production" caused by missed settings |
| Version control and auditability | "Who changed this, when, and why?" with no reliable record |
| Speed and scalability | Ticket queues, waiting, and slow provisioning |

---

## Points to tighten (from the feedback so far)
- **Give the reason as clearly as the answer.** A correct Yes or No with a thin reason loses marks.
- **Don't overstate.**
  - Version control gives you the *definition* of your infrastructure, so you can rebuild it. It doesn't back up your *data*, so "instant disaster recovery" also needs data backups.
  - "Guarantees byte-for-byte consistency" is too strong. The same code gives the same *intended* configuration, but differences in provider behaviour, versions, and drift can still creep in.
- **Declarative tools don't prevent drift on their own.** They make drift *detectable* (the plan shows the difference), and re-applying the code corrects it. Someone or something still has to run the comparison, which is why scheduled pipeline runs help.
- **"State lock" is a different concept from "rigidity".** State locking prevents two people from applying changes at the same time. It is not a weakness of declarative tools. The real weakness is that complex procedural logic is harder to express.
- **Idempotency belongs to the operation or tool, not "the server".** Say "the script or tool is idempotent."
- **Unverified claims:** The comment about Vercel being a victim of an exposed SSH port isn't something I can confirm, so check the source before repeating it.
- **Lifespan nuance:** short lifespans and elasticity overlap. The cost angle (pay by the hour, scale down at night) is the piece that separates them.
