# Signals Generator Matlab Project
It is required to implement a general signal generator that has the following specifications:

1. When the program starts the program asks the user for the following parameters:<br />
a. Sampling frequency of signal.<br />
b. Start and end of time scale<br />
c. Number of the break points and their positions (i.e. the points that the signal definition rule
changes).<br />
Example: The signal is defined from -2:0 as a DC signal and from 0:2 as ramp the user will enter that<br />
the number of break points =1 and the position at t=0.<br />

2. According to the number of break points the program asks the user at each region to enter the<br />
specifications of the signal at this region Which are:<br />
a. DC signal: Amplitude.<br />
b. Ramp signal: slope – intercept.<br />
c. General order polynomial: Amplitude-power – intercept.<br />
d. Exponential signal: Amplitude – exponent.<br />
e. Sinusoidal signal: Amplitude – frequency – phase.<br />

3. Display the resulting signal in time domain .<br />

4. the program asks the user if he wants to perform any operation on the signal:<br />

a. Amplitude Scaling: scale value.<br />
b. Time reversal.<br />
c. Time shift: shift value.<br />
d. Expanding the signal: expanding value<br />
e. Compressing the signal: compressing value<br />
f. None<br />

5. Display the new signal in time domain
