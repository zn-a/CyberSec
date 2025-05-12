#import "template.typ": *

#show: project.with(
  title: [
    #text(smallcaps("EE4410 Cyber Security of Power Grids\n"))
    #text("Assignment 1: URL Phishing and Malware Identification", size: 14pt)
  ],
  authors: (
    "Zubair Al-Zubi (5342007)",
  ),
  date: "May 15, 2025",
)
In this lab Assignment, we will explore the concepts of URL phishing and malware identification. We will analyze a dataset containing URLs and their corresponding labels to identify potential phishing attempts and malware threats. The dataset consists of various features extracted from the URLs, including their length, the presence of special characters, and other relevant attributes.

= Malware Identification Using VirusTotal

In this section, we will utilize the VirusTotal API to check the URLs for potential malware threats. VirusTotal is a popular online service that analyzes files and URLs for viruses, worms, trojans, and other kinds of malicious content. We will send requests to the VirusTotal API and retrieve the analysis results for each URL in our dataset.

= Analysis of Malicious URLs
In this section, we will analyze the URLs that have been identified as malicious by the VirusTotal API. We will extract relevant features from these URLs and visualize the data to gain insights into the characteristics of phishing attempts and malware threats.

= Passive Reconnaissance Using Maltego
In this section, we will explore the use of Maltego, a powerful open-source intelligence (OSINT) tool, for passive reconnaissance. We will demonstrate how to gather information about a target domain using Maltego's transforms and visualizations. This will help us understand the potential attack surface and identify any vulnerabilities that may exist.

= Mitigations Against OSINT Exploits
In this section, we will discuss various mitigations against OSINT (Open Source Intelligence) exploits. OSINT refers to the collection and analysis of publicly available information for intelligence purposes. We will explore techniques and best practices to protect against potential threats arising from OSINT activities.