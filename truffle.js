module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
	networks: 
	{
	  	development: 
	  	{
	  		host: "localhost",
	  		port: 8545,
	    	network_id: "*", // match any network
	     	gas: 4241593,
  			gasPrice: 30000000
		}
	},
	solc: 
	{
  		optimizer: 
  		{					// Gas cost is important. However if your project grows large,
							// feel free to turn this on. You may find your contracts migrate
	    	enabled: false, // more easily. :)
	    	runs: 4000 
  		}
  	}
};