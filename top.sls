top.sls
    '*':

    'my*': # all minion with a minion_id that begins with 'my'
      - apache #apply the state file name 'apache.sls'