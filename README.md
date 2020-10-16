# Criterion Example

Criterion is a unit testing framework for C (and C++).

## Requirement

**[Criterion](https://github.com/Snaipe/Criterion)** must be installed on your laptop !

## Installation

For the use of criterion it will be necessary to install **gcovr**.
Gcovr allows you to measure the number of lines tested by Criterion.

```bash
Fedora :
$> sudo dnf install gcovr

Ubuntu / Debian
$> sudo apt-get install gcovr
```

## Usage

Build the project
```bash
$> make all
$> ./criterionExample
```

Build the project with unit tests
```bash
$> make tests_run
$> ./unit_tests
$> gcovr --exclude tests/
```