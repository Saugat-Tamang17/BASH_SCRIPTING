# Continuous Integration Quiz

## Questions and Answers

### Question 1 (Yes/No + reason)

Imagine a team where each developer works on their own branch for three weeks and merges everything on the last day before release. Is this an example of continuous integration? Explain why or why not.

**Answer:**

1. this is not the example of the continuos integration , because the continuos integration is the process of continuosly updating or intergrating the new changes from one developer or any one in the repo at least daily preferrably many times a day ( given the fact that a TEAM is involved here ) but merging the codebase or their own branches after 3 weeks and mergining everything on the last day will cause the bigger problems to solve instead of the small problems the CI always aims to deal with at the start so no

---

### Question 2 (Descriptive)

Walk me through the core CI loop, from the moment a developer starts a change to the moment it lands on trunk. What triggers the pipeline, where does it run, and where is it defined?

**Answer:**

2. the core loop goes like this : 

i. the developer works on a short lived feature which is branch off of main repo or branch ( main or master)
ii. after the dev puts the PR (push or pull request), that will trigger the CI server for example jetkins or github actions etc through a webhook
iii. pipeline runs now *automatically : the CI system now runs automatically provide with the isolated enviornment ( usually a container or a short TTL or ephemeral VM ) that will check out the code and execute the pipeline that is defined in the config file of the repo 
iv. result is passed ( whether pass or failed ) and then it is posted to PR 
v. merge if everything has been approved and passed , the changes now land on the main branch and pipeline will generally run again comapring it  against the merged result beforehand

---

### Question 3 (Descriptive)

Name the five typical pipeline stages in order, and say what each one is responsible for. What's the difference between unit tests and integration tests?

**Answer:**

3. stages of the pipelines are : 

i. build the code , compile it and resolve any kind of the dependencies and errors and produce a running artifact 
ii. check for the static analysis ( linters ,formatters , type checkers etc )
iii. test the individual functions or the classes in the isolation that might break the whole system if not resolved properly  ,often done with the mocks  for giving the quick feedback 
iv.after the function test, check for the integration test i.e check if all of the classes or functions or the modules work well togeher  and databases as well 
v. if everything is right upto this point , then a build artificact is stored in the registery and ready for another CD part of the DEVOPS

---

### Question 4 (Yes/No + reason)

Should slow integration tests run before fast unit tests in a pipeline? Explain the principle behind your answer.

**Answer:**

4. no the slow integration test are not supposed to run before the fast unit test in the pipeline because unit test eliminates the bugs on the functional or syntaxical level , meaning that for the modules or the classes to run together , each function themselves are supposed to run right , and if the functions themselves are not working in atomic level then no wonder they wont work after integration , so yeah no sense in making the integration test which is slow in comparison to unit test to start over

---

### Question 5 (Descriptive)

What is the difference between a textual conflict and a semantic conflict? Give an example of a semantic conflict, and explain why only CI (not Git alone) catches it.

**Answer:**

5. textual conflict : two developer edited the same line in the same file at the same time 

semantic conflict : two developers edited different lines in the same / different file but breaks both logical behavior 
the git alone doesnt catches semantic conflict because of the fact that they edited in differenct locations that doesnt trigger any kind of overlapping texts , i.e git sees no error and perofmrs clean merge 
while the, CI Once Git finishes merging the two branches, the CI pipeline automatically triggers downstream verification steps:
Compilation / Type Checking: A statically typed compiler (or Python type checker like `mypy`) analyzes the newly merged codebase and immediately fails:

1. Automated Test Suites: The CI pipeline runs unit and integration tests against the merged state, catching runtime failures, broken business logic, or altered API contracts before the code ever hits production.

---

### Question 6 (Yes/No + reason)

A developer says, "The tests pass on my laptop, so the code is fine." Is that enough evidence for the team to trust the change? Explain what problem is at play and how CI solves it.

**Answer:**

6. meh , no , you cant just trust his statements like that , it does work on his laptop fine , but not all of the world or the team even , is using the same device as the developer or the dependencies as of his , this problem is called the environmental drift . and added untracked dependencies 
the CI pipeline solves it from the following methods : 
creating a ephemeral VM or the isolated environment where the dependeices that are specified on the repo or the version control is there, and then it runs on that artificat on that VM so that it can verify that it can run on every other machine , 
Pre-Merge Integration Check: CI automatically merges the developer's feature branch into the latest main branch state before running tests. This catches semantic conflicts, broken contracts, and integration issues before bad code breaks shared environments.

---

### Question 7 (Descriptive)

List at least four practices that make CI work well in real life. For each, say what goes wrong when a team ignores it (think flaky tests, slow builds, a broken trunk, and rebuilding artifacts).

**Answer:**

7.CI PracticeWhat Goes Wrong When Ignored1. Maintain Fast Build & Test PipelinesSlow Builds: If a CI run takes 30–60 minutes, developers stop waiting for results before moving to new tasks. They context-switch, stack unverified commits, or bypass CI entirely, destroying the fast feedback loop that makes integration safe.2. Fix Broken Trunks Immediately ("Stop the Line")A Broken Trunk: When a failed build on main is ignored, developers continue merging new feature branches on top of broken code. This stacks multiple failures, makes identifying the root cause of an outage extremely difficult, and halts everyone's ability to release.3. Build Software Artifacts Only OnceRebuilding Artifacts: Recompiling code or creating separate Docker images for each environment (Staging vs. Production) introduces subtle risk. The binary tested in staging is not identical to the binary deployed to production, opening the door for compiler/dependency variance bugs.4. Quarantine or Fix Flaky Tests PromptlyFlaky Tests: When tests fail intermittently for reasons unrelated to code changes, developers lose trust in the CI suite. They begin re-triggering builds blindly or ignoring test failures altogether ("it always fails on Tuesdays"), allowing real bugs to slip into production.

---

### Question 8 (Yes/No + reason)

Does completing CI mean your code is automatically deployed to production? Explain how CI relates to continuous delivery and continuous deployment, and why CI has to come first.

**Answer:**

No. Completing Continuous Integration (CI) simply means your code changes have been merged into the main branch and successfully validated (built and tested) in an isolated environment. It does not automatically deploy those changes to production.

---

## Summary of the CI Part of the Pipeline

### What CI is

Continuous integration is the practice of merging code changes into a shared main branch often, ideally many times a day, and automatically building and testing every change. The goal is to find conflicts and bugs while they are still small.

### The core loop

1. A developer works on a short-lived branch created from the main branch.
2. The developer pushes the branch or opens a pull request. A webhook triggers the CI server (Jenkins, GitHub Actions, GitLab CI, etc.).
3. The CI server starts a clean, isolated environment (a container or temporary VM), checks out the code, and runs the pipeline defined in a config file stored in the repo.
4. The pass or fail result is posted back to the pull request. Many teams block merging unless the result is a pass.
5. After approval, the change is merged into the main branch, and the pipeline runs again on the merged result.

### Pipeline stages

1. **Build:** compile the code, resolve dependencies, and produce an artifact (JAR, wheel, container image).
2. **Static analysis:** run linters, formatters, type checkers, and security scanners without executing the code.
3. **Unit tests:** test individual functions and classes in isolation, usually with mocks. These are fast.
4. **Integration tests:** test that modules work together with real dependencies such as a database. These are slower.
5. **Artifact publishing:** store the versioned artifact in a registry so the delivery part of the pipeline can use it.

Fast checks run first so developers get feedback quickly. This is called fail fast.

### Types of conflict

- **Textual conflict:** two developers edit the same lines and Git cannot merge them automatically.
- **Semantic conflict:** the merge succeeds with no Git conflict, but the code is broken. For example, one developer renames a function while another adds a call to the old name. Only building and testing the merged code catches this.

### Environment drift

Code that works on one developer's laptop may fail elsewhere because of different OS versions, library versions, or configuration. CI builds and tests in one standard, reproducible environment, so the pipeline result is the shared source of truth.

### Good practices

- Integrate at least daily and keep branches short-lived.
- Keep the build fast, ideally a few minutes.
- Fix a broken main branch immediately.
- Fix or quarantine flaky tests.
- Build the artifact once and deploy that same artifact to every environment.

### How CI relates to CD

CI ends with a tested, versioned artifact. It does not deploy anything by itself.

- **Continuous delivery:** the artifact is always ready to release, and a person approves the release.
- **Continuous deployment:** the artifact is released to production automatically with no manual approval.

CI must come first because code cannot be safely delivered automatically unless it has been automatically verified.
