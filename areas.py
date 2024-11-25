import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm
def plot_normal_area(mean, std, value, right_tail=True, standardized=False, title="", x_label=""):
    x = np.linspace(mean - 4*std, mean + 4*std, 1000)
    y = norm.pdf(x, mean, std)
    
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(x, y, 'b-', lw=2)
    
    if right_tail:
        ax.fill_between(x, y, where=(x >= value), alpha=0.3)
    else:
        ax.fill_between(x, y, where=(x <= value), alpha=0.3)
    
    y_at_value = norm.pdf(value, mean, std)
    ax.vlines(x=value, ymin=0, ymax=y_at_value, color='r', linestyle='--')
    
    # Calculate y position relative to max height of curve
    max_y = max(y)
    label_y = -max_y * 0.05  # Position label at 5% below x-axis
    
    if x_label:
        ax.text(value, label_y, x_label, horizontalalignment='center')
    
    ax.set_title(title)
    ax.set_xlabel('z' if standardized else 'x')
    ax.set_ylabel('Density')
    ax.grid(True, alpha=0.3)
    
    # Adjust plot limits to accommodate label
    ax.set_ylim(label_y * 1.5, max_y * 1.1)
    plt.show()

plots = [
    (70, 15, 95, True, False, "Chance x > 95 with μ=70, σ=15", "x=95"),
    (120, 25, norm.ppf(0.15, 120, 25), False, False, "Lower 15% of data with μ=120, σ=25", "x=?"),
    (0, 1, -1.96, True, True, "Chance z > -1.96 for Standard Normal", "z=-1.96"),
    (45, 8, 35, False, False, "Chance x < 35 with μ=45, σ=8", "x=35"),
    (0, 1, 1.8, False, True, "Chance z < 1.8 for Standard Normal", "z=1.8"),
    (200, 30, norm.ppf(0.90, 200, 30), True, False, "Top 10% of data with μ=200, σ=30", "x=?"),
    (55, 12, norm.ppf(0.95, 55, 12), False, False, "95% Service Level with μ=55, σ=12", "x=?"),
    (55, 12, 70, False, False, "Service Level for stock=70 with μ=55, σ=12", "x=70"),
    (0, 1, 1.23, False, True, "Service Level for z=1.23", "z=1.23")
]

for mean, std, value, right_tail, standardized, title, x_label in plots:
    plot_normal_area(mean, std, value, right_tail, standardized, title, x_label)
