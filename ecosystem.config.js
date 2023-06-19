module.exports = {
    apps : [
        {
            name: "fadu-api",
            script: "npm start",
            watch: false,
            env: {
                "PORT": 3000,
                "IP": "146.190.50.58",
                "NODE_ENV": "production"
            }
        }
    ]
}
