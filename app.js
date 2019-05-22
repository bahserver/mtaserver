const Discord = require('discord.js');
const client = new Discord.Client();

const prefix = "-"; // bot Prefix
console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
console.log('         [Wait please .. ]       ')
console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
client.on('ready', () => {
	console.log('')
	console.log('')
	console.log('')
	console.log('')
	console.log('')
	console.log('')
	console.log('')
	console.log('')
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  console.log(`Logged in as [ ${client.user.tag}! ]`);
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  console.log('[           BOT IS ONLINE         ]')
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  console.log('[        info         ]')
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  console.log(`servers! [ " ${client.guilds.size} " ]`);
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  console.log(`Users! [ " ${client.users.size} " ]`);
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  console.log(`channels! [ " ${client.channels.size} " ]`);
  console.log('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=')
  client.user.setStatus(`dnd`)
});


client.on('message', msg =>{
    if(msg.content === `${prefix}ping`) {
    let embed = new Discord.RichEmbed()
    .setColor('RANDOM')
    .setTitle("Bot Ping!!")
    .setDescription(`${client.ping} ms`)
	msg.channel.send(embed);
    }
});

 client.on('ready', () => {
    client.user.setGame(`${prefix}help | Servers: ${client.guilds.size} `)
 });
 
 client.on("message", message => {
                      if(message.content === 'رابط' ) {
						  message.channel.send('**شيك الخاص يحلو 😉**').then(msg => {
							  msg.edit('وش فيك منتظر رح شوف الكود فالخاص')
						  
						  });
                        message.channel.createInvite({
                        thing: true,
                        maxUses: 10,
                        maxAge: 86400
                        }).then(invite =>
       
							   message.author.sendMessage(invite.url)
							  
                             )						 
					}});
 
client.login('Bot Token');