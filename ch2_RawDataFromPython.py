# Import required libraries to be used. i.e. csv for csv file output, pyplot for plotting etc.
import numpy as np
import matplotlib.pyplot as plt
import csv

# Generate identical x and y variables with numeric series from 1 to 30
x = range(1, 31)
y = x

# Generate 30 uniform distributed random number each range between -1 to 1
noise = np.random.uniform(-1, 1, 30)

# Create noisy y values with magnitude of 2
ywnoise = y + noise * 2

# Plot the resulting x and ywnoise data
plt.plot(x, ywnoise)
plt.show()

# Write out the resulting data as a CSV file. Be carefull about the tab indentation which is important for Python.Write out the resulting data as a CSV file. Be carefull about the tab indentation which is important for Python.
with open('linoise_python.csv', 'w') as f:
    writer = csv.writer(f)
    writer.writerow(['x', 'ywnoise'])
    writer.writerows(zip(x, ywnoise))
