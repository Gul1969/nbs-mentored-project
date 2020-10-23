#! /bin/bash

python3 -m venv venv
. ./venv/bin/activate
cd /home/student/nbs-mentored-project/roles/service-1/files/
pip install -r requirements.txt
pytest
cd /home/student/nbs-mentored-project/roles/service-2/files/
pip install -r requirements.txt
pytest
cd /home/student/nbs-mentored-project/roles/service-3/files/
pip install -r requirements.txt
pytest
cd /hom/student/nbs-mentored-project/roles/service-4/files/
pip install -r requirements.txt
pytest
exit
