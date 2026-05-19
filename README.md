# Force_ID-Humanoids

A research project for **impact force location and intensity identification on humanoid robots** using joint-position sensors, without requiring dedicated force/torque sensors. The methodology was presented at the **ICARA 2023** conference.

## Overview

This project investigates whether the joint-position signals of a humanoid robot (Boston Dynamics Atlas) can be used to identify:

1. **The location** of an external impact force applied to the robot's body
2. **The intensity** of that force

The full pipeline involves:
- Simulating the Atlas robot in **Webots** with MATLAB controllers
- Applying incremental external forces to different body segments
- Recording joint-position sensor data across all 28 joints
- Extracting statistical features from the sensor signals
- Training a **Decision Tree classifier** (via MATLAB's Classification Learner) to predict force location
- Performing cross-correlation and signal analysis for force intensity estimation

## Repository Structure
Force_ID-Humanoids/
├── ICARA2023 paper/         # Conference paper (PDF, DOCX, and presentation slides)
├── ROS/                     # ROS learning materials and tutorials (PowerPoints, reference book)
├── WEBOTS/
│   ├── atlas/               # Initial Atlas simulation world (basic force application tests)
│   ├── atlas_hum/           # Intermediate simulation (custom physics plugin, multi-location data collection)
│   └── atlas_hum_edit/      # Final simulation (full dataset collection, feature extraction, classification)
│       ├── controllers/
│       │   ├── SC_add_incr_force/   # Main data collection + ML pipeline
│       │   ├── XCORR/               # Signal similarity and feature analysis scripts
│       │   ├── RED_addForce/        # Reduced force application experiments
│       │   ├── Bar_Plot_3D/         # 3D bar plot visualizations
│       │   ├── comp_All_POS/        # Comparison across body positions
│       │   └── comp_loopVSsingle/   # Loop vs single-step simulation comparison
│       ├── plugins/physics/my_Fphysics/  # Custom ODE physics plugin (C)
│       ├── protos/          # Custom robot PROTO definitions
│       └── worlds/          # Webots world files (.wbt)
├── thesis presentation/     # Thesis defense slides
├── thesis proposal/         # Research proposal documents
├── thesis report/           # Full thesis document
└── README.md

## Methodology

### 1. Simulation Setup

The Atlas humanoid robot model is simulated in **Webots** using a MATLAB controller interface (`wb_robot_step`, `wb_supervisor_node_add_force`). A custom **ODE physics plugin** (`my_Fphysics.c`) is used to handle physics interactions.

### 2. Data Collection

Forces are applied incrementally to six body locations on the robot:
- **RLL** – Right Lower Leg
- **LLL** – Left Lower Leg
- **RSCAP** – Right Scapula
- **LSCAP** – Left Scapula
- **PELVIS** – Pelvis
- **TORSO** – Upper Torso

For each location, forces ranging from **100 N to 2000 N** (in steps of 100 N) are applied along the X axis for a fixed duration. After each force application, the simulation resets and the joint positions of all 28 joints are recorded.

The 28 monitored joints are:
`BackLbz`, `BackMby`, `BackUbx`, `NeckAy`, `LArmElx`, `LArmEly`, `LArmMwx`, `LArmShx`, `LArmUsy`, `LArmUwy`, `RArmElx`, `RArmEly`, `RArmMwx`, `RArmShx`, `RArmUsy`, `RArmUwy`, `LLegKny`, `LLegLax`, `LLegLhy`, `LLegMhx`, `LLegUay`, `LLegUhz`, `RLegKny`, `RLegLax`, `RLegLhy`, `RLegMhx`, `RLegUay`, `RLegUhz`

### 3. Feature Extraction

For each data sample, three statistical features are extracted per joint sensor:
- **Mean (M)**
- **Standard Deviation (SD)**
- **Mean Frequency (F)**

This yields a **54-feature vector** (18 sensors × 3 features) per sample, collected across all six body locations and force magnitudes.

### 4. Force Location Classification

A **Decision Tree** classifier is trained using MATLAB's Classification Learner app (`LOC_CLASS.m` / `trainClassifier.m`). The model is validated using **4-fold cross-validation** and classifies which of the 6 body regions was impacted.

### 5. Signal Analysis

Cross-correlation and signal similarity measures (`XCORR/`) are used to explore relationships between force intensity and joint-response signals.

## Requirements

- [Webots](https://cyberbotics.com/) (R2021a or compatible version)
- MATLAB (R2018a or newer, with Signal Processing Toolbox and Statistics and Machine Learning Toolbox)
- MinGW compiler (for building the C physics plugin; `mingw.mlpkginstall` provided)

## Getting Started

1. Open Webots and load one of the world files from `WEBOTS/atlas_hum_edit/worlds/`.
2. Ensure the `my_Fphysics` physics plugin is compiled and associated with the world (see instructions in `my_Fphysics.c`).
3. Run `SC_add_incr_force.m` as the robot controller to collect joint-position data across force levels and body locations.
4. After data collection, run `ft_extraction.m` to extract statistical features and generate `all_data.xlsx` and `loc_data.xlsx`.
5. Load the dataset in MATLAB's Classification Learner or run `LOC_CLASS.m` / `trainClassifier.m` to train and validate the location classifier.

## Publication

> **"Impact Force Location and Intensity Identification Using Joint-Position Sensors in Humanoids"**
> Presented at ICARA 2023.
> Full paper available in the `ICARA2023 paper/` folder.

## Author

**Samia Choueiri**