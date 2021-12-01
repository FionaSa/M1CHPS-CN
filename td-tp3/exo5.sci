//atomsSystemUpdate()
atomsInstall("scibench")

n = 500

//stacksize("max");
A = scibench_poissonA(n);

PlotSparse(A)
