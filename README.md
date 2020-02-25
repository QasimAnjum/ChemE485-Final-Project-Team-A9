# ChemE485-Final-Project-Team-A9

Planning reports must include:

Q1. A short abstract describing the process.

This report provides the general framework, and investigation on a potential cumene production process. We have been provided with an objective function that corresponds to breakeven price of cumene. This means that once we optimize our given objective function, the calculated minimum cost for cumene from our process, will be higher than the current selling price of cumene. The expected capacity of this process, is such that it is able to generate 100,000 metric tons/yr of cumene. The process will have to be profitable, during a 10 year plant-lifetime with an assumed interest rate of 15%. There will be two general reactions occurring in this process. The primary reaction will be the creation of cumene from propylene, and benzene. The secondary series reaction, which results from the combination of cumene and propylene, produces p-diisopropyl benzene. The general main flowsheet will consist of a reactor, fire heater, distillation columns, and a series of pumps. The reactor will be a packed bed that is either concurrent or countercurrent cooling, depending on which reactor configuration proves to be most economical. As part of our design we will also determine the appropriate amount, and orientation of distillation column necessary to achieve our goals. In general, we plan to optimize our proposed process using select decision variables that have a prominent effect on our system. 

Q2. Hand-written block flow diagram of the process.

![](Design.png)

3. Initial data regarding the reaction kinetics necessary for simulations

![](/CumeneReaction1.png)

**Secondary Reaction:**

![](/CumeneReaction2.png)

These are the given reaction kinetics for the Cumene production reactions. We plan to simulate the reaction in a level 2 RPlug reactor, because we believe this to be the closest simulation of a packed bed reactor. 

4. A suggested thermodynamics package and any extra information that needs to be gathered for the simulation

- Use SRK for the entire process. We will be dealing with hydrocarbons at high temperatures (to increase reaction kinetics) and high pressures (to decrease volume) . SRK is the equation of state most commonly used with hydrocarbons at high pressures.
- For heat exchangers with multiple zones, it is recommended that you simulate each zone with a separate heat exchanger. Actual equipment may include several zones, so costing should be based on the actual equipment specifications.
- For the distillation columns, you should use the shortcut method (SHOR) to get estimates for the rigorous distillation simulation (TOWR or SCDS). The shortcut method may be used until an optimum case is near. It is then expected that everyone will obtain a final design using rigorous simulation of the columns.
- For the reactor, you may use an isothermal reactor to estimate the volume of catalyst and heat exchange area. For more accurate results the temperature profile in the reactor should be modeled by completing a differential heat and material balance on the reactor.

5. An order of magnitude estimate of the design cost.

![](/OrderofMagnitudeEstimate.png)
