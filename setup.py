import subprocess, os
def x(c, d=False):
    try: r = subprocess.run(c, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e: print(f"Error: {e.stderr.decode()}");exit(1)
    if d: print(r.stdout.decode())
f=['repack.o','repack_executable','circle_recovered.s','circle.o','circle']
q=[(['as','repack.s','-o','repack.o'],False),(['gcc','repack.o','-o','repack_executable'],False),(['./repack_executable'],False),(['as','circle_recovered.s','-o','circle.o'],False),(['gcc','circle.o','-o','circle'],False),(['./circle'],True)]
for c, d in q: x(c, d)
for e in f:
    try: os.remove(e)
    except OSError as g: print(f"Error: {g.strerror}")