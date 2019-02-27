module.exports = {
	apps : [{
            name: 'loopback',
            script: 'npm',
            args: 'start',
            exec_model: 'fork',
            autorestart: true,
            watch: true,
            max_memory_restart: '4G'
            }]
       };
