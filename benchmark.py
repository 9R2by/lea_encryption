import random
from scipy import signal
import subprocess
import statistics
import matplotlib.pyplot as plt
from tqdm import tqdm

if __name__ == '__main__':
    path_to_binary = './target/lea_encryption'
    fig, ax = plt.subplots()
    output_text = ''
    # n = pow(2, 18)   below 1 mb of data: 8.000.000 / 128 = 62.500
    n = 62500
    median_arr = []
    temp_median_arr = []

    for _ in tqdm(range(n + 1), desc="Loading", unit="Runs"):
        command = [path_to_binary, str(random.getrandbits(32)), str(random.getrandbits(32)),
                   str(random.getrandbits(32)),
                   str(random.getrandbits(32))]
        process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()
        cycles = int(stdout.split()[0])
        median_arr.append(cycles)
        temp_median_arr.append(cycles)

    ax.plot(signal.medfilt(median_arr), label=f'Median filtered encryption algorithm cycles per run')
    ax.set_xlabel('n')
    ax.set_ylabel('Cycles')
    ax.set_title('LEA Encryption')
    ax.legend()
    plt.savefig('output_plot.svg', format='svg')
    print(statistics.median(temp_median_arr))
