---
layout: project
title: Project4
---
**MapReduce-based implementation of Stable Marriage Problem with PySpark.**
	We revisit a variant of the Stable Marriage Problem, used for real-world situations like the national residency match. In this task, we have a set of medical residencies and a set of hospitals, each of which has a ranking over the other, and each hospital has a set number of spots. We wish to find a set of stable matchings such that there is no pairing of resident and hospital such that the resident prefers the hospital over their assigned hospital, and the hospital prefers the resident over any of their current ones. We implemented a fully-parallelized version of this famous algorithm using MapReduce via Apache Spark. Implementation in Python with PySpark. Collaboration with Jonah Kallenbach.