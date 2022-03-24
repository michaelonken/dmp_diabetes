/** Rule set that helps defining defining simple observations. The paramters
 *  are as follows:
 *
 */
RuleSet: DDGDmpSimpleObservation(category, code)

* status = #final
* category 1..1 MS
* category = {category}
* code 1..1 MS
* code = {code}
* subject only Reference(DDGDmpPatient)
* effectiveDateTime 1..1 MS

