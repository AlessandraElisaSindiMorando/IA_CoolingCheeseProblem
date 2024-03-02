# The Cooling Cheese Problem

This project is a tutorial to introduce the basics of MATLAB for modelling and controlling continous and discrete-time systems.

A manufacturing company producing cheese requires a specific process during its seasoning.
Let’s a cooling/heating cube box of be conditioned by heating air. 
We wish to insert a sphere of cheese in the cube box to make the cheese follow such process.
<p align="center">
<img src="images/coolingCheeseProblem.svg">
</p>
Let be

- $\theta_c(t)$ : temperature of the cheese
- $\theta_f(t)$ : temperature of the air of the box
- $\theta_a(t)$ : external enviromental temperature
- $w_c(t)$ : noise on the cheese temperature
- $w_f(t)$ : noise on the air box temperature

The model of the system be described by the following equations:

$$C_c{\dot{\theta}}_c(t)=k_{fc}\left(\theta_f(t)-\theta_c(t)\right)+\omega_c(t)$$

$$C_f{\dot{\theta}}_f(t)=k_{fc}\left(\theta_c(t)-\theta_f(t)\right)+k_{af}\left(\theta_a(t)-\theta_f(t)\right)+q(t)+\omega_f(t)$$

In the tutorial the continous-time system is modeled in Simulink and by sampling the output $y\left(t\right)=\theta_f\left(t\right)$ and a relay and a PID controller are defined in order to keep $\theta_c(t)$ close to a reference temperature $\hat{\theta}_c(t)$ which is unmeasurable using the measured output. Simulations are carried out and metrics are defined to quantify the performances of the two methods.
