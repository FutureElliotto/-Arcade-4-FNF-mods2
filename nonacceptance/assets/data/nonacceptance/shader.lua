local shaderName = "ntsc"
function onCreate()
	if shadersEnabled and (not lowQuality) then
		shaderCoordFix() 
		makeLuaSprite("warp")
		
		runHaxeCode([[
			var shaderName = "]] .. shaderName .. [[";
			
			game.initLuaShader(shaderName);
			
			var shader0 = game.createRuntimeShader(shaderName);
			game.camGame.setFilters([new ShaderFilter(shader0)]);
			game.camHUD.setFilters([new ShaderFilter(shader0)]);
			
			game.getLuaObject("warp").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
			return;
		]])
	end
end

function shaderCoordFix()
	if shadersEnabled and (not lowQuality) then
		runHaxeCode([[
			resetCamCache = function(?spr) {
				if (spr == null || spr.filters == null) return;
				spr.__cacheBitmap = null;
				spr.__cacheBitmapData = null;
			}
			
			fixShaderCoordFix = function(?_) {
				resetCamCache(game.camGame.flashSprite);
				resetCamCache(game.camHUD.flashSprite);
				resetCamCache(game.camOther.flashSprite);
			}
			
			FlxG.signals.gameResized.add(fixShaderCoordFix);
			fixShaderCoordFix();
			return;
		]])
		
		local temp = onDestroy
		function onDestroy()
			runHaxeCode([[
				FlxG.signals.gameResized.remove(fixShaderCoordFix);
				return;
			]])
			
			if (temp) then
				temp()
			end
		end
	end
end