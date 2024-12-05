EXPERIMENT "20241205_005951" DOCUMENTATION
Author: Marios Samiotis, PhD candidate in DiCarlo Lab of QuTech, TU Delft, Netherlands

------------------------------------------------

1. Introduction

This folder includes raw data as well as processed data from a simple demonstration of the Trotterization algorithm on Starmon-5, a five-qubit superconducting processor available online in the Quantum Inspire platform, https://www.quantum-inspire.com/.

The quantum system simulated with Trotterization using Starmon-5 is a simple two-spin antiferromagnetic system, with a Hamiltonian given by
H = J * (XX + YY + ZZ),
where J = 10 MHz, and X, Y, Z are the Pauli matrices, well known in quantum theory.

Out of the five qubits of Starmon-5, we only need two for this demonstration. We choose the best pair based on the latest calibration benchmarks, which to our experience was qubit pair Q2-Q4 at the time. The calibration benchmarks, as those appeared in the Quantum Inspire website, are shown in the file "starmon-5_status.png".

The measurement counts of each circuit run were post-processed in order to correct for readout induced errors during measurement. This is done by using the Python class "CorrelatedReadoutError" from the Python package "qiskit_experiments" (for more info see https://qiskit-community.github.io/qiskit-experiments/stubs/qiskit_experiments.library.characterization.CorrelatedReadoutError).

------------------------------------------------

2. Circuit data organization

We will be referring to the label "20241205_005951" as the experiment "timestamp" from now on.

Each circuit that ran on Starmon-5 is what is called a "job" in the Quantum Inspire platform. Each job comprises of the circuit that runs on the processor, as well as the measurement results in the form of counts.

The subfolder "{timestamp}_jobs" contains each circuit that has been run to produce the final experiment results, which includes what we refer to as the "raw data" and "post-processed data" of the experiment. Each subfolder is named as "circuit_nr_{circuit_number}_{job_id}", where "circuit_number" is an index that increases in time, and hints to the sequence of each circuit run.

The file "{timestamp}_{job_id}_original_circuit.png" is the circuit figure originating from applying the Trotterization algorithm of order 1 for the problem Hamiltonian. This circuit needs to be transpiled in order to run on Starmon-5, a processor that has a limited set of native gates that it can only run (we refer the reader to the file "{timestamp}_Trotterization_Starmon-5.json" for a full list of all available native gates). The transpiled circuit is depicted in figure "{timestamp}_{job_id}_transpiled_circuit.png". The file "{timestamp}_{job_id}_OpenQasm3_transpiled_program.qasm" is the quantum assembly program which runs on Starmon-5, after transpiling the original Trotterization circuit.

The .png file "{timestamp}_{job_id}_measurement_histogram.png" shows the measurement outcome without any post-processing, what we refer to as "raw data". The file "{timestamp}_{job_id}_ro_corrected_histogram.png" shows the measurement counts as those have been corrected by taking into account readout induced measurement errors, producing what we refer to as "post-processed data".

The file "{timestamp}_{job_id}_job_data.json" contains all relevant job information in JSON format.

------------------------------------------------

3. Processed data

The file "{timestamp}_Trotterization_Starmon-5.json" contains all relevant information concerning the experiment in JSON format.

For all generated figures and animations we use the ["Raw data"]["Time [s]"] values for the variable of time, and the ["Processed data"]["Observables"]["IZ"] and ["Processed data"]["Observables"]["ZI"] for the expectation values of qubits Q2 and Q4 respectively. The later are the result of calculating the observables "IZ" and "ZI" from each circuit's post-processed counts (in order to mitigate the readout induced errors during measurement).

------------------------------------------------

4. Additional information

The code used to generate the Trotterization circuits, as well as to run each circuit on Starmon-5 and post-process the results is part of a private repository that I have created and therefore do not publicly share.

All circuits are generated using the standard Python "qiskit" SDK elements, while connecting to Starmon-5 is possible via the "quantuminspire" Python SDK.

Calibrations and maintenance of Starmon-5 was done by Guiseppe Ruggero Di Carlo, a PhD candidate in the DiCarlo lab in QuTech, TU Delft, Netherlands.

For any further information do not hesitate to contact me personally at m.samiotis@tudelft.nl


