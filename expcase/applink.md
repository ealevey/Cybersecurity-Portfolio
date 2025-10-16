# Apartment Printer Link (2025)

## Summary
Responded remotely to an active Remote Access Trojan (RAT) infection on a Windows 10 device located in a campus apartment. The end-user reported pop-ups followed by unauthorized remote control of the mouse, confirming live attacker presence. Incident was escalated to me after initial troubleshooting attempts by another technical stakeholder (Computer Science student).

## Detection
- **Initial Indicators:** Pop-up messages, system slowdown, and visible remote mouse activity.
- **Escalation:** User’s partner attempted initial assistance; incident escalated to me via FaceTime for remote guidance.
- **Validation:** Manual inspection of suspicious Windows CMD file revealed it was likely a copy-pasted script from open forums (e.g., 4chan), commonly used for scare tactics and amateur RATs.

## Containment
- Isolated the compromised system by instructing the user to enable Airplane Mode.
- Disabled malicious startup entries and uninstalled associated software.
- Manually deleted remaining files linked to the RAT.

## Eradication
- Directed the user to run a **Windows Defender Offline Scan** (outside of the OS environment) to identify and remove potential rootkits or hidden malware.
- Verified that the scan completed successfully and no active malicious processes remained.

## Recovery & Hardening
- Restored normal device functionality and ensured user could safely reconnect to the network.
- Enabled **BitLocker encryption** for enhanced data-at-rest protection.
- Advised credential resets and account monitoring for potential compromise.
- Provided security awareness guidance for avoiding untrusted links and downloads.

## Outcome
- Successfully neutralized the RAT and restored system integrity.
- Strengthened endpoint security posture for the affected user.
- Maintained communication and reassurance with a panicked non-technical user, while collaborating with a technical peer to validate actions.
- Demonstrated the ability to handle a **live incident response scenario remotely** under time pressure.

## Lessons Learned
- Even amateur RATs can cause real-time disruption and user panic; professional response steps are still critical.
- Windows Defender Offline Scan proved effective for rootkit-level threats.
- Clear communication with non-technical users is as important as technical remediation.


### Challenges
- Primary remediation took ~10 minutes, but an additional 20 minutes was spent resolving a long-standing account configuration issue (incorrect email on user profile).  
- Highlighted how **non-technical complications** (user error, forgotten accounts, misconfigured credentials) often extend response time more than the malware itself.  
- Demonstrated patience and adaptability in handling both the technical incident and the human factors involved.