#
println("Ds) Test of the MultiPhotonDoubleIon module with ASF from an internally generated initial- and final-state multiplet.")
#
setDefaults("print summary: open", "zzz-MultiPhotonDoubleIon.sum")
wa = Atomic.Computation("xx",  Nuclear.Model(36.);
                        initialConfigs=[Configuration("1s^2 2s^2 2p^6")],
                        finalConfigs  =[Configuration("1s^2 2s^2 2p^5"), Configuration("1s^2 2s 2p^6") ], 
                        process = JAC.MultiPDI, 
                        processSettings=MultiPhotonDoubleIon.Settings() )

wb = perform(wa)
setDefaults("print summary: close", "")

