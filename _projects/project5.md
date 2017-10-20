---
layout: project
title: Project5
---
**Distributed blockchain-based verifiable voting system.**
	We re-consider a fundamental property of American voting system: privacy of one's vote in exchange for uncertainty of it being counted. We considered how one could design a distributed system that allows every voter to *guarantee* that their vote is counted, in exchange for somewhat less privacy. To do this, we implement the blockchain protocol, complete with miners that ensure that votes are bundled into blocks, voting machines that add new transactions (votes) to the global ledger, and a distributed ledger. Implementation in C++, using gRPC and Google Protocol Buffers, and functions over AWS. Collaboration with Jonah Kallenbach, Matt Rauen, and Willy Xiao. [[code]](https://github.com/jonahkall/blockchain-voting)