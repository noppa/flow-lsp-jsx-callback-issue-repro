echo ''
echo 'Autocomplete suggestions for the first `obj`, outside of JSX:'
echo ''
./node_modules/flow-bin/cli.js autocomplete 6 5 < index.js

echo ''
echo 'Autocomplete suggestions for the last `obj`, inside button element body:'
echo ''
./node_modules/flow-bin/cli.js autocomplete 12 16 < index.js

echo ''
echo 'Autocomplete suggestions for the `obj` inside button onClick callback:'
echo ''
./node_modules/flow-bin/cli.js autocomplete 10 9 < index.js
