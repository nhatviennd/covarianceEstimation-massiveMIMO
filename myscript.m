name: Run MATLAB Script on GitHub-Hosted Runner
on: [push]
jobs:
  my-job:
    name: Run MATLAB Script
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository
        uses: actions/checkout@v2
      - name: Install MATLAB
        uses: matlab-actions/setup-matlab@v0
      - name: Run script
        uses: matlab-actions/run-command@v0
        with:
          command: myscript
