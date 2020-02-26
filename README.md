# ChemE485-Final-Project-Team-A9

Planning reports must include:

Q1. A short abstract describing the process.

This report provides the general framework, and investigation on a potential cumene production process. We have been provided with an objective function that corresponds to breakeven price of cumene. This means that once we optimize our given objective function, the calculated minimum cost for cumene from our process, will be higher than the current selling price of cumene. The expected capacity of this process, is such that it is able to generate 100,000 metric tons/yr of cumene. The process will have to be profitable, during a 10 year plant-lifetime with an assumed interest rate of 15%. There will be two general reactions occurring in this process. The primary reaction will be the creation of cumene from propylene, and benzene. The secondary series reaction, which results from the combination of cumene and propylene, produces p-diisopropyl benzene. The general main flowsheet will consist of a reactor, fire heater, distillation columns, and a series of pumps. The reactor will be a packed bed that is either concurrent or countercurrent cooling, depending on which reactor configuration proves to be most economical. As part of our design we will also determine the appropriate amount, and orientation of distillation column necessary to achieve our goals. To aid in our design process, we will simulate our model in aspen with level 2 representation. For the reactor, we will use a plug flow reactor with cooling water as the thermal coolling fluid. The reactors resulting final size will be based off of energy balances. The thermal package we believe fits best is Soave Redlich Kwong (SRK) along with NBS steam tables, because this best fits the component types we are working with. An inital order of magnitude cost estimate was performed based soley on material cost, and resutling profits. In general, we plan to optimize our proposed process using select decision variables that have a prominent effect on the cost and performance of our system. 


Q2. Hand-written block flow diagram of the process.

![](/BFD.jpeg)

3. Initial data regarding the reaction kinetics necessary for simulations

![](/CumeneReaction1.png)

**Secondary Reaction:**

![](/CumeneReaction2.png)

These are the given reaction kinetics for the Cumene production reactions. We plan to simulate the reaction in a level 2 RPlug reactor, because we believe this to be the closest simulation of a packed bed reactor. As part of our investigation, we plan to test both co-current and counter-current conditions with the thermal cooling fluid being process water(U = 100 W/m^2K). The overall size of reactor will be calculated based off of an initial heat duty estimate based off of an energy balance of around our reactor. Below is an equation we can use to estimate the initial size of our reactor. 
                            Q = UA*DeltaLogmean
We will adjust as necessary as we progress through our investigation, testing different conditions that will result in different net heat duties.  



4. A suggested thermodynamics package and any extra information that needs to be gathered for the simulation

- We will use the SRK thermal package selection for the entire process. The reaction deals with hydrocarbons at high temperatures (to increase reaction kinetics) and high pressures (to decrease volume) . SRK is a cubic equation of state most commonly used with hydrocarbons at high pressures. Aspen's method assisitant also reccomends SRK based off of similar reasons, as well as the absense of petroleum assays and psuedocomponents. The following bullet points are extra information given from the design project. 
- For heat exchangers with multiple zones, it is recommended that you simulate each zone with a separate heat exchanger. Actual equipment may include several zones, so costing should be based on the actual equipment specifications.
- For the distillation columns, you should use the shortcut method (SHOR) to get estimates for the rigorous distillation simulation (TOWR or SCDS). The shortcut method may be used until an optimum case is near. It is then expected that everyone will obtain a final design using rigorous simulation of the columns. The assisistant also reccomended using the specific steam table labeled NBS, because of its increase accuracy.  
- For the reactor, you may use an isothermal reactor to estimate the volume of catalyst and heat exchange area. For more accurate results the temperature profile in the reactor should be modeled by completing a differential heat and material balance on the reactor.

5. An order of magnitude estimate of the design cost.
Here are are only considering the overall conversion to be 100%. This is reasonable assumption because there is no route in which benzene leaves the system. The secondary reaction also has a tiny reaction conversion associated with it, so when making an order of magnitude estimate, it would be safe to neglect the secondary reaction.

![](/OrderofMagnitudeEstimate.png)
