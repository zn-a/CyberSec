# EE4410 Lab 5 Report: Anomaly Detection and Time Series Classification

**Student:** Zubair Al-Zubi  
**Student ID:** 5342007  
**Course:** EE4410 - Cyber Security of Power Grids  
**Date:** June 18, 2025

## Executive Summary

This lab investigates two complementary approaches for detecting cyber attacks in power grid operational technology (OT) networks: Traffic Data & Throughput Graph (TDG) analysis and Time Series Classification (TSC) using machine learning. The analysis covers three scenarios (X, Y, Z) representing different network conditions in a digital substation environment.

## Part 1: Network Traffic Analysis Results

### Traffic Pattern Analysis
- **Scenario X**: Classified as **NORMAL TRAFFIC** - exhibits regular, periodic communication patterns consistent with operational power grid traffic
- **Scenario Y**: Classified as **CYBER ATTACK TRAFFIC** - shows irregular, sporadic patterns with communication disruptions
- **Scenario Z**: Classified as **NORMAL TRAFFIC** - demonstrates consistent operational behavior similar to Scenario X

### IP Address Analysis
- Primary communication occurs between industrial network ranges (100.x.x.x subnets)
- Attack scenarios show altered traffic volumes and irregular timing patterns
- Normal scenarios maintain consistent protocol usage and communication intervals

## Part 2: Time Series Classification Results

### Machine Learning Model Performance
- **High Accuracy**: All node-specific models achieved >99% validation accuracy
- **Random Forest Algorithm**: Successfully implemented as alternative to CNN due to TensorFlow compatibility issues
- **11 Node Analysis**: Comprehensive coverage of digital substation nodes (A-K)

### Attack Detection Results
- **Scenario X**: 0.04% average attack detection (essentially normal)
- **Scenario Y**: 2.03% average attack detection (confirmed attack scenario)
- **Scenario Z**: 1.9% average attack detection (moderate anomalies)

### Node Vulnerability Analysis
- **Most Vulnerable**: Nodes E and K showed highest attack detection rates
- **Most Secure**: Nodes F, G, H, I, J demonstrated strong resilience
- **Critical Infrastructure**: Node E showed 11.6% attack detection in Scenario Y

## Part 3: Comparative Analysis

### TDG Method Strengths
- ✅ Fast and intuitive visual pattern recognition
- ✅ No training data required
- ✅ High interpretability for expert analysts
- ✅ Low computational overhead
- ✅ Excellent for timing-based attack detection

### TDG Method Limitations
- ❌ Requires manual analysis and expert interpretation
- ❌ Limited scalability for large networks
- ❌ Connection-level granularity only
- ❌ Potential for subjective interpretation bias

### TSC Method Strengths
- ✅ High accuracy (>99%) with quantified confidence scores
- ✅ Fully automated detection and classification
- ✅ Node-level granular analysis
- ✅ Highly scalable for large network deployments
- ✅ Excellent for detecting subtle data anomalies

### TSC Method Limitations
- ❌ Requires labeled training data
- ❌ Higher computational complexity
- ❌ Less interpretable model decisions
- ❌ Requires data preprocessing and model maintenance

## Key Cybersecurity Insights

### Attack Detection Capabilities
1. **Complementary Coverage**: TDG excels at timing-based attacks, TSC at data anomalies
2. **Sensitivity Levels**: TSC detected subtle anomalies missed by visual analysis
3. **Node-Specific Patterns**: Different infrastructure components show varying vulnerability profiles
4. **Automation Value**: ML enables continuous 24/7 monitoring without human fatigue

### Practical Implementation Recommendations

#### 1. Hybrid Defense Strategy
- Implement both TDG and TSC methods for comprehensive coverage
- Use TDG for real-time operator dashboards
- Deploy TSC for automated background monitoring

#### 2. Network Security Architecture
- Multi-layer defense with network, application, and physical monitoring
- Real-time alerting system with statistical baseline establishment
- Network segmentation for attack containment

#### 3. Threat Intelligence Integration
- Continuous model updates with new attack signatures
- Behavioral analysis for zero-day attack detection
- Integration with industrial cybersecurity frameworks (NIST, IEC 62443)

#### 4. Operational Procedures
- Clear incident response and escalation procedures
- Regular penetration testing and security assessments
- Staff training on OT-specific cyber threats

## Conclusions

This lab demonstrates that effective power grid cybersecurity requires a multi-method approach combining human expertise with automated intelligence. The TDG method provides rapid situational awareness for operators, while TSC delivers precise, scalable attack detection capabilities.

**Critical Finding**: Scenario Y represents a significant cyber attack affecting multiple infrastructure nodes, particularly node E, which could compromise power grid stability if left undetected.

The combination of visual pattern recognition and machine learning classification provides a robust defense mechanism suitable for protecting critical power infrastructure against evolving cyber threats.

## Technical Achievements

- Successfully analyzed 3 network scenarios across 11 infrastructure nodes
- Implemented alternative ML approach using Random Forest when TensorFlow was unavailable
- Achieved >99% model accuracy across all node classifications
- Created comprehensive visualizations for threat assessment
- Developed practical cybersecurity recommendations for OT environments

---

**Lab Completion Status:** ✅ **COMPLETED SUCCESSFULLY**

*This report accompanies the detailed Jupyter notebook analysis with complete code implementation, visualizations, and technical details.*
