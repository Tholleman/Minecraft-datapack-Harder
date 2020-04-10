# Notes to self for development

Changing the name/version requires a change in the function harder:uninstall

Adding a new mob:
1. Add it to the `upgradable` entity_types tag
    1. If a village upgrader can also upgrade it: add it to `village_upgradable` as well
2. Create the mcfunction in the upgrades directory
3. Add a reference to the function to the upgrade mcfunction

