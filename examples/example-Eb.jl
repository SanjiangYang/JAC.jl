println("Eb) Simulation of the four-step cascade after 1s-3p photo-excitation of Si^+: Configuration model.")

@warn("\n\n !!! This example does not work properly at present !!! \n\n")
#
using JLD
wr = load("zzz-Cascade-2019-04-26T08.jld");   data = wr["cascade data:"];
wa = Cascade.Simulation([Cascade.IonDist(), Cascade.FinalDist()], Cascade.ProbPropagation(), Cascade.SimulationSettings() )
wb = perform(wa, data; output=false)

nothing

