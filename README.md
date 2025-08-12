# NASA-USLI-2024-2025-Recovery-System-Analysis-Wind-Drift-Kinetic-Energy-and-Descent-Timing
MATLAB model for NASA USLI 2024–2025 Vulcan 1 recovery system, calculating wind drift, descent time, and landing kinetic energy for varying parachute configs. Used in design validation for the overall competition-winning launch vehicle.
This MATLAB script models the worst-case recovery dynamics for Vulcan 1, the launch vehicle that secured the overall national championship in the 2024–2025 NASA University Student Launch Initiative (USLI). The simulation quantifies key recovery metrics to support safe and reliable vehicle retrieval under varying environmental conditions.

Core Capabilities:

Parametric Recovery Modeling: Adjustable parachute parameters (drag coefficient, surface area, deployment altitude) allow evaluation of different canopy configurations and their effects on descent performance.

Wind Drift Analysis: Calculates horizontal displacement for a range of wind speeds (0–20 mph) to determine worst-case recovery range.

Landing Kinetic Energy (KE) Assessment: Computes section-by-section landing KE for major vehicle assemblies (nosecone/payload bay, avionics bay, fin can assembly) to ensure compliance with competition safety requirements.

Descent Duration Estimation: Simulates time under drogue and main parachutes from deployment to landing, enabling accurate recovery planning.

Changeable Parameters: Easily modify mass, drag, deployment altitude, and environmental variables to run sensitivity studies or “what-if” scenarios.

Applications:

Design trade studies for parachute selection and sizing.

Uses:
Used during design reviews presented to high power rocketry SMEs at NASA. Results from this script were compared to an industry standard OpenRocket simulation software results, to validate outcomes.

Pre-flight safety validation of kinetic energy limits.

Recovery crew planning for expected drift ranges and retrieval times.

Notable Achievement:
This script was used in the engineering validation process for the Vulcan 1 recovery system, contributing to the team’s success as overall champions of the 2024–2025 NASA USLI competition.
