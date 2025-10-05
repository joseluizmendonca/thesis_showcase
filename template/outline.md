# Thesis Summary

**Title:** Non-Intrusive Injection Control System for Alternative Fuel Conversions  
**Author:** José Luiz Salles de Mendonça  
**Degree:** Bachelor of Engineering (E-Mobility and Green Energy)

## 1. Motivation and Problem Statement
Adapting existing internal combustion engines (ICEs) to alternative (synthetic or biogenic) fuels often requires substantial modification of the engine control unit (ECU) or the use of costly aftermarket systems. Different fuels have distinct stoichiometric air-fuel ratios (AFR), demanding modified injection durations. Conventional ECUs compensate only within narrow bounds and resist tampering. A non-intrusive method to adjust fuel delivery—without reprogramming or replacing the ECU—would lower adoption barriers for alternative fuels.

## 2. Objective
Design, build, and evaluate a hardware module that:
- Intercepts injector control signals from the OEM ECU.
- Extends injection pulse width by a configurable percentage.
- Emulates injector electrical characteristics to remain undetected.
- Supports peak-and-hold style current control for compatibility with various injectors.
- Operates transparently, preserving all other ECU functions.

## 3. Theoretical Basis
A combustion stoichiometry model (Octave-based) was used to:
- Derive oxygen demand and AFR for conventional vs. alternative fuels.
- Establish required pulse width extensions for compensating lower energy density fuels.
- Clarify injector current dynamics (rise time, saturation, demagnetization) critical for safe control.

## 4. Experimental Platform Preparation
A Weber 2‑cylinder, 4‑stroke EFI engine was refurbished (fuel pressure correction, instrumentation). Injectors were characterized (resistance ≈ 12.3 Ω, inductance ≈ 12 mH, opening time ≈ 1.2 ms). ECU diagnostic behavior was probed—only resistive emulation was needed for acceptance.

## 5. Prototype System Architecture
Functional blocks:
- Input Conditioning: Edge detection of Start/End of Injection (SOI/EOI).
- Control: MCU-driven timing, pulse extension, and configurable peak/hold parameters.
- Output/Driver: Peak-and-hold capable injector stage with current limiting.
- Power Management: 12 V automotive domain regulation and protection.
The system inserts inline between ECU and injectors; original injector drive is electronically isolated.

## 6. Implementation Highlights
- Digitally adjustable peak phase duration and PWM-controlled hold current.
- Real-time parameter adjustment without reflashing firmware.
- Modular layout scalable to multi-cylinder configurations.
- Protective handling of inductive energy (active clamping observations, external dissipation strategy).

## 7. Testing and Validation
### Bench Tests
- Verified reliable SOI/EOI detection across 10–15 V supply range.
- Confirmed stable peak and hold current regulation qualitatively using oscilloscope traces.
- Edge case handling: startup, shutdown, missing edges, parameter changes; no missed pulses in sampled runs.

### Engine Integration Tests
- Module installed between ECU and dual injectors; saturation-mode operation retained.
- Pulse width extensions (e.g. +5% to +7%) produced corresponding decreases in measured lambda values (e.g. λ ≈ 0.776–0.795) aligning with theoretical expectations.
- Worst Case Execution Time (WCET) ≈ 50 µs—adequate for timing fidelity.

## 8. Key Results
- Demonstrated non-intrusive fuel mixture manipulation without ECU reprogramming.
- Validated theoretical pulse width to lambda correlation in live engine conditions.
- Achieved seamless electrical emulation preventing ECU fault detection.

## 9. Contributions
1. Practical architecture for inline injector control extension without firmware access.  
2. Integration of peak-and-hold driver with dynamic digital configurability.  
3. Empirical injector characterization informing design constraints.  
4. Experimental evidence supporting feasibility of incremental AFR adaptation for alternative fuels.

## 10. Limitations
- Tested on a single engine platform (generalization unproven).
- No closed-loop lambda feedback integration (open-loop only). 
- Limited dataset size (lambda logging constraints). 
- Only saturation-type injector signals intercepted (no native peak-and-hold ECU signal decoding). 
- Energy dissipation is resistive (no regenerative recovery). 
- Alternative fuels not physically tested due to sample/component unavailability.

## 11. Future Work
- Controlled testing with actual alternative fuels under varied load profiles.
- Closed-loop AFR control with sensor feedback and adaptive algorithms.
- Predictive multi-phase injection and advanced timing strategies.
- Regenerative or more efficient driver energy handling. 
- Expanded validation on multi-cylinder, higher speed engines.
- User-facing configuration interface (PC or CAN-based tooling).

## 12. Chapter Synopses
- Declaration / Acknowledgements: Formal statements and credits.  
- Abstract: High-level overview—problem, approach, validation.  
- Introduction: Motivation, ECU limitations, project scope.  
- Theoretical Background: Stoichiometry, combustion modeling, AFR derivations.  
- Preparation: Engine readiness, instrumentation, injector parameter extraction.  
- Prototype Design: Requirements, modular architecture, control strategy.  
- Prototype Testing: Bench verification and integration diagnostics.  
- Conclusion: Achievement of goals, constraints, and development roadmap.  
- AI Documentation: Transparency of AI-assisted processes.  

## 13. Conclusion (Condensed)
The prototype validates that extending injector pulse width inline—while preserving OEM ECU functionality—is both feasible and effective for mixture adjustment. With further refinement (closed-loop control, efficiency improvements, broader validation), the approach can form a scalable pathway for facilitating adoption of alternative fuels in legacy ICE platforms.
