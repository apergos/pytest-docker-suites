opts = {
    'default': {
        'hosts': [ 'dataset2', 'dataset1001' ],
        'remote': '/root/',
    },
    'prep': {
        'prep.sh': {
            'execute': 'bash'
        }
    },
    'main': {
        'rsync-dumps.py': {
            'remote': '/usr/local/bin/',
            'execute': 'python'
        }
    },
    'data': {
        'data_dir.tar.gz': {
            'remote': '/',
            'untar': True,
        }
    },
    'collect': {
        'collect.sh': {
            'execute': 'bash',
            'results': '/root/results.txt'
        }
    },
    'verify': {
        'verify.sh': {
            'remote': None,
            'execute': 'bash'
        }
    },
    'mod': {
        '*': {
            'execute': 'bash'
        },
        'mod-1.sh': {},
        'mod-2.sh': {},
        'mod-3.sh': {}
    },
    'cleanup': {
        'end.sh': {
            'execute': 'bash'
        }
    },
    'globals': {
        'password': "testing",
        'tmp': '/root/'
    }
}

