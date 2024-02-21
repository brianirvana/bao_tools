import configparser as cp

config = cp.ConfigParser()
config.read("NPCs.dat")

numNPCs = int( config['INIT']['NumNPCs'] )

npcList = []

for npcNumber in range(1, numNPCs+1) :
	if 'NPC' + str(npcNumber) in config :
		npc = config['NPC' + str(npcNumber)]
		
		npc['NPCNumber'] = str( npcNumber )

		if 'MaxHP' in npc and 'GiveExp' in npc and int( npc['MaxHP'] ) > 0 :
			npc['Rendimiento'] = str( int(npc['GiveEXP']) / int(npc['MaxHP']) )
		else :
			npc['MaxHP'] = '0'
			npc['GiveEXP'] = '0'
			npc['Rendimiento'] = '0'
		
		npcList.append(npc)

#sortedNpcList = sorted(npcList, key=lambda npc: npc['MaxHP'])
npcList.sort(key = lambda npc: float( npc['Rendimiento'] ) )
for npc in npcList :
	print('%s %s R: %s V: %s E: %s' % (npc['NPCNumber'], npc['Name'], npc['Rendimiento'], npc['MaxHP'], npc['GiveEXP']) )