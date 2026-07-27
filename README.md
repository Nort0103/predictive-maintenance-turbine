# Predictive Maintenance for Turbofan Engines

## Project Overview
This project implements a Machine Learning pipeline to predict the Remaining Useful Life (RUL) of turbofan engines using the NASA CMAPSS telemetry dataset. The goal is to shift from reactive maintenance to proactive, predictive maintenance, thereby reducing unexpected downtime and optimizing overhaul schedules.

## Technical Approach
* **Data Processing:** Cleaned and normalized 21 telemetry sensor readings.
* **Feature Engineering:** Implemented a **Piecewise Linear RUL** approach (capped at 125 cycles) to accurately model the physical reality of machine degradation, preventing the model from penalizing itself during the engine's healthy operational phase.
* **Modeling:** Trained and evaluated a Random Forest Regressor.
* **Evaluation:** Achieved a Mean Absolute Error (MAE) of ~13.6 cycles.

## Key Insights
A feature importance analysis revealed that `sensor_11` (static pressure at the HPC outlet) is the most critical early indicator of impending engine failure. This aligns perfectly with real-world turbine thermodynamics and mechanical degradation patterns.

## Technologies Used
* Python (pandas, scikit-learn, matplotlib, numpy)
* joblib (for model serialization)
* Git / GitHub for version control