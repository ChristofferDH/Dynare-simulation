# Dynare-simulation

I denne mappe er koden til simulationerne, som jeg har brugt.

**Standardmodellen**

Standardmodellen fra kapitel 3 ligger i mappen NK_standard. For at køre simulationen skal man køre [run.m](NK_standard/run).
Det kræver Dynare 5.0 at køre simulationen.

**Ved rentens nedre grænse**
Den Ny-keynesianske model ved rentens nedre grænse er i mappen NK_zlb. For at køre simulationen skal man først køre [setpathdynare4.m](setpathdynare4.m). Derefter kan man simulere modellen ved at køre [runsim_dnk.m](runsim_dnk.m) i mappen model_zlb.
Det kræver Dynare 4.3.1 at køre simulationen.

Simulationerne kan umiddelbart køres med andre versioner, men dette er ikke testet.
