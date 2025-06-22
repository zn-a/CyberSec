#import "template.typ": *

// Configure links and references
#show link: set text(fill: rgb("#0000ff")) // Dark blue URL
#show ref: set text(fill: rgb("#8B0000"))  // Dark red refs

#show: project.with(
  title: [
    #text(smallcaps("EE4410 Cyber Security of Power Grids\n"))
    #text("Assignment 5: Anomaly Detection and Time Series Classification", size: 14pt)
  ],
  authors: (
    "Zubair Al-Zubi (5342007)",
  ),
  date: "June 18, 2025",
  link: text(fill: rgb(0, 0, 200))[
    #link("https://colab.research.google.com/drive/1nHKLkhARheanFmdtIxtVosJ-9ZE6Trq2?usp=sharing")[#underline[Link to Google Colab Notebook]]
  ]
)

// make links blue
#show link: set text(fill: rgb(0, 0, 255))


This lab investigates two approaches for detecting cyber attacks in power grid operational technology (OT) networks: Traffic Data & Throughput Graph (TDG) analysis and Time Series Classification (TSC) using machine learning. The analysis covers three scenarios (X, Y, Z) representing different network conditions in a digital substation environment.

= Network Traffic Analysis Using Throughput and TDG


== Classification of Scenarios

The throughput plots in @pcap-throughput-subplots show clear differences across the three PCAP files. PCAP X and Z exhibit stable, periodic throughput values, consistent with normal operational traffic. In contrast, PCAP Y contains a distinct burst with a peak above 60,000 Bytes/s, which strongly indicates cyber attack behavior such as flooding or injection.

#figure(
  image("plots/part-1/pcap_throughput_subplots.svg"),
  caption: [PCAP throughput subplots]
)<pcap-throughput-subplots>


== Adversary and Target Identification

To identify the adversary and target IP addresses for each scenario, I analyzed the traffic patterns, packet distributions, and communication relationships between different hosts. The analysis involved:

1. *Traffic volume analysis* - Examining the total data volume sent/received by each IP address
2. *Packet count analysis* - Analyzing the number of packets transmitted by each source IP
3. *Traffic concentration metrics* - Measuring how concentrated traffic is among a few hosts versus evenly distributed

@traffic-concentration-by-source shows the traffic volume by source IP for each scenario. The traffic concentration metrics (ranging from 0 to 1, where higher values indicate more concentration) reveal important patterns:

- Scenario X: Concentration = 0.442, with normal distribution patterns
- Scenario Y: Concentration = 0.564, showing abnormally high traffic from IP 100.0.0.11 to 100.7.0.12
- Scenario Z: Concentration = 0.401, with normal distribution patterns

#figure(
  image("plots/part-1/traffic_concentration_by_ip.svg"),
  caption: [Traffic volume concentration by source IP for scenarios X, Y, and Z]
)<traffic-concentration-by-source>

In Scenario Y, IP 100.0.0.11 demonstrates attack behavior by sending an unusually high volume of traffic to IP 100.7.0.12. The packet count analysis further confirms this finding, showing a significantly higher number of packets originated from this address compared to the regular communication patterns seen in scenarios X and Z.

#figure(
  image("plots/part-1/packet_count_by_ip.svg"),
  caption: [Packet count by source IP for scenarios X, Y, and Z]
)<packet-count-by-source>

The findings are summarized in the table below:

#table(
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: (center, center, center, left),
  [*Scenario*], [*Adversary IP*], [*Target IP*], [*Analysis*],
  [X], [None], [None], [Normal traffic pattern with balanced communication between hosts.],
  [Y], [100.0.0.11], [100.7.0.12], [Attack traffic with high concentration (0.564) from a single source with abnormally high packet volume directed at a specific target.],
  [Z], [None], [None], [Normal traffic pattern with even distribution of communication (concentration 0.401).]
)

Based on this analysis, I conclude that Scenario Y represents a cyber attack where IP 100.0.0.11 is the adversary targeting IP 100.7.0.12. The attack appears to be a flooding or injection attack due to the high volume of traffic and packet counts. Scenarios X and Z show normal operational traffic with no identifiable attack patterns.


= Time Series Classification using Machine Learning


= Comparative analysis
