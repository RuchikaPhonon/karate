function fn(){ 
var env = karate.env
karate.log("Environment Variable value is ------",env)
var config = {
  
baseUrl : 'https://dev.phonon.in'

}; 
if(env=='test'){
config.baseUrl = 'https://test.phonon.in';
}else if(env=='c4c'){
config.baseUrl = 'https://c4c.phonon.in';
}
return config;
}