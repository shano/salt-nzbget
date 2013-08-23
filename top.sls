# This is the QA environment state tree for testing
# Anyone should be able to run this state tree on any supported platform when
# it is complete

base:
  '*':
    - core
  'usenet_box':
    - nzbget
