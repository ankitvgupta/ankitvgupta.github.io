---
layout: project
title: Project6
---
**CuckooRings: Fast Consistent Hashing Algorithm using Cuckoo Hashing and Ring-based consistent hashing.**
	We sought to combine two hashing technologies: Cuckoo Hashing and Consistent Hashing into one that combined the benefits of both. Cuckoo Hashing uses two hash tables to allow for amortized constant time hashes and lookups. Consistent Hashes uses a ring-based data structure to allow a hash table to reduce or increase the number of buckets without needing the rehash the entire table. We combined these two technologies into a single CuckooRing hashing structure, which allows for fast hashes and lookups, as well as resilience to changing numbers of buckets. Implemented in C++. Collaboration with Jonah Kallenbach.