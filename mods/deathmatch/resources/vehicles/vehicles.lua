function veh(playerSource, commandName, model)
	if(playerSource) then
		local db=exports.db:getConnection()
		local x,y,z =getElementPosition(playerSource)
		local rx,ry,rz=getElementRotation(playerSource)
		local vx,vy,vz=0;
		y=y+3;
		

		dbExec(db,'INSERT INTO vehicles (model,x,y,z,rx,ry,rz,vx,vy,vz) VALUES(?,?,?,?,?,?,?,?,?,?)', model,x,y,z,rx,ry,rz,vx,vy,vz)

		local vehicleObject=createVehicle(model,x, y, z,rx,ry,rz)

		dbQuery(function(queryHandle)
			local results=dbPoll(queryHandle,0)
			local vehicle=results[1]

			setElementData(vehicleObject,"id",vehicle.id)

		end,db,'SELECT id from vehicles ORDER BY id DESC LIMIT 1')
	end
end
addCommandHandler("veh", veh)

function loadVehicles(queryHandle)
	results=dbPoll(queryHandle,0)
	for index, vehicle in pairs(results) do
		local vehicleObject = createVehicle(vehicle.model, vehicle.x,vehicle.y, vehicle.z,vehicle.rx,vehicle.ry,vehicle.rz)
		setElementVelocity(vehicleObject, vehicle.vx, vehicle.vy, vehicle.vz)
		setElementData(vehicleObject,"id",vehicle.id)
	end
end
addEventHandler('onResourceStart', resourceRoot,function()
	local db=exports.db:getConnection()
	dbQuery(loadVehicles,db,'SELECT * from vehicles')
end)

addEventHandler('onResourceStop', resourceRoot, function (  )
	local vehicles=getElementsByType('vehicle')
	local db=exports.db:getConnection()
	for index,vehicle in pairs(vehicles) do
		local id = getElementData(vehicle, 'id')
		local x,y,z=getElementPosition(vehicle)
		local rx,ry,rz=getElementRotation(vehicle)
		local vx,vy,vz=getElementVelocity(vehicle)
		--dbExec(db,'UPDATE vehicles SET x=?, y=?, z=?, rx=?, ry=?, rz=? WHERE id=?',x,y,z,rx,ry,rz,id)
		dbExec(db,'UPDATE vehicles SET x=?, y=?, z=?, rx=?, ry=?, rz=?, vx=?, vy=?, vz=?  WHERE id=?',x,y,z,rx,ry,rz,vx,vy,vz,id)
	end
	

end
)