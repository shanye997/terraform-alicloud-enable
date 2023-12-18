#!/usr/bin/env sh

success=true
f=${1}"/examples/complete"
planFile=${1}"/scripts/plan.tftest.hcl"
applyFile=${1}"/scripts/apply.tftest.hcl"

echo ""
echo "====> Terraform testing in" $f
./terraform -chdir=$f init -upgrade
echo ""
echo "----> Plan Testing"

cp $planFile $f/
./terraform -chdir=$f test test -verbose
if [[ $? -ne 0 ]]; then
    success=false
    echo -e "\033[31m[ERROR]\033[0m: running terraform test for plan failed."
else
    echo ""
    echo "----> Apply Testing"
    rm -rf $f/plan.tftest.hcl
    cp $applyFile $f/
    ./terraform -chdir=$f test test
    if [[ $? -ne 0 ]]; then
      success=false
      echo -e "\033[31m[ERROR]\033[0m: running terraform test for apply failed."
    fi
    rm -rf $f/apply.tftest.hcl
fi

if [[ $success == false ]]; then
    exit 1
fi

exit 0
