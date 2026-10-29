# Solar Plant Monitoring — Test Cases

These tests use simulated data and are for learning purposes.

| Test ID | Scenario | Expected Result |
|---|---|---|
| TC-01 | Inverter status is Online | Display normal status |
| TC-02 | Inverter status is Offline | Flag an offline alert |
| TC-03 | Alert code is LOW_OUTPUT | Flag a generation alert |
| TC-04 | Energy reading is zero | Recommend checking the reading and inverter status |
| TC-05 | Incident status is Open | Include it in unresolved incidents |
| TC-06 | Incident status is Resolved | Exclude it from unresolved incidents |
| TC-07 | Severity is High | Display high-priority incident |
| TC-08 | Required CSV columns are missing | Report a data validation issue |

## Test Notes

- Verify column names before importing CSV files.
- Check that energy readings are numeric.
- Confirm that incident statuses use consistent spelling.
- An alert indicates a condition to investigate, not necessarily a confirmed equipment failure.
