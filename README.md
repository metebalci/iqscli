# iqscli

iqscli is an unofficial CLI for [IBM Quantum Systems](https://quantum.ibm.com/). 

*This project has NO connection with IBM. It is my personal project.*

## Installation

```
pip install iqscli
```

## Usage

Before first use, `save_account` command should be used to save the token. Either use `--set-as-default` with `save_account` or provide `--account-name` to other commands.

List all backends:

```
$ iqscli backends
ibm_brisbane                      ONLINE (13 jobs)
ibm_kyoto                         ONLINE (13 jobs)
ibm_osaka                         ONLINE (0 jobs)
ibmq_qasm_simulator               ONLINE (0 jobs)
simulator_mps                     ONLINE (0 jobs)
simulator_statevector             ONLINE (0 jobs)
```

Show details of a particular backend:

```
$ iqscli backends --show-details --name ibm_brisbane
ibm_brisbane ONLINE (13 jobs)
     processor: Eagle r3
    num_qubits: 127
     max_shots: 100000
   basis_gates: ecr, id, rz, sx, x
  instructions: ecr, id, delay, measure, reset, rz, sx, x, if_else, for_loop, switch_case
  meas_kernels: hw_qmfk
```

Show jobs:

```
$ iqscli jobs
cma3f8oiidfp3m905ft0 ibmq_qasm_simulator sampler DONE 20240102171947812375
cma3688iidfp3m904dq0 ibmq_qasm_simulator sampler DONE 20240102170033755981
cma32c6879ps6bbv1mb0 ibmq_qasm_simulator sampler DONE 20240102165216597386
```

## Changes

0.3:
- jobs command added

0.2:
- first pypi release
