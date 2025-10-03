# Master Thesis — Bridging EUDI Wallets and Web3 via zk-SNARKs

**Author:** Philipp Sommer  
**Institution:** Technische Universität Darmstadt  
**Department:** Computer Science — Chair of Applied Cryptography  
**Supervisors:** Prof. Sebastian Faust, Ph.D. · M.Sc. Philipp-Florens Lehwalder  
**Date:** October 3, 2025  

---

## Abstract

This thesis investigates how zk-SNARKs can be applied to bridge EU regulatory requirements, such
as identity binding in financial transactions, with the privacy principles of Web3. The central research
question is whether monolithic or recursive proof composition offers better efficiency when binding
EUDI credentials to blockchain wallets. At its core, the thesis introduces the credential–wallet binding
proof (π<sub>cred-bind</sub>), which enables a user to prove possession of a valid EUDI credential together with
control of a blockchain wallet public key. This construction is extended with the derived key binding
proof (π<sub>key-bind</sub>), which recursively verifies π<sub>cred-bind</sub> and establishes the binding for child public keys.
Both proofs are designed to satisfy the standard zk-SNARK properties of completeness, knowledge
soundness, and zero-knowledge.

We implement π<sub>cred-bind</sub> as a monolithic Groth16 proof using Circom, snarkjs, and RapidSnark, and
also as a monolithic Plonky2 proof, while π<sub>key-bind</sub> is realized as a recursive Plonky2 proof. All
implementations incorporate targeted optimizations to improve proving efficiency while preserving
correctness and security. Our evaluation shows that the Groth16 instantiation achieves the highest
efficiency, with proof generation in 8.24 seconds, a proof size of 803 bytes, and verification in 0.01
seconds, outperforming both Plonky2 variants. Within Plonky2, recursion yields clear efficiency gains
over its monolithic baseline, reducing proving time from 85.05 to 18.39 seconds and proof size from
179.6 to 163 kB.

A simplified cost model explains these results: Groth16 benefits from small constant factors and
constant-size proofs, while Plonky2 incurs higher costs due to domain padding and the overhead of
FFTs, Merkle commitments, and FRI queries. Nova was also considered as a folding-based alternative,
but full integration was not possible because gadget support for the required curves is still missing.
The results highlight three main contributions of this work. First, the definition of two new zk-SNARK-
based proofs for linking EUDI credentials with blockchain wallets. Second, the implementation of
both monolithic and recursive approaches in Groth16 and Plonky2. Third, an empirical evaluation
and cost model to clarify the performance trade-offs. Taken together, these findings demonstrate
that zk-SNARKs provide a viable cryptographic bridge between EU-compliant digital identity and
decentralized wallets. They show that Groth16 currently offers the most efficient solution, while
recursion within Plonky2 improves performance internally but remains less competitive across systems.
This establishes both the feasibility and the limitations of privacy-preserving yet regulation-compliant
identity integration in Web3.
