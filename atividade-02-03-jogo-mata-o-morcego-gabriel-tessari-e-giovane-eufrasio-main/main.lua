--Commited Gabriel Tessari e Giovane Eufrasio
function love.load()	
  morcego = love.graphics.newImage('assets/morcego1.png')
  vassoura = love.graphics.newImage('assets/vasoura.png')

  print("test log")
  eixo_x = 100
  eixo_x_limite = 600
  eixo_andar_controle_x = 0

  eixo_y = 100
  eixo_y_limite = 600
  eixo_andar_controle_y = false


  --Moved Vassoura:
  Vassoura_x1 = 0
	Vassoura_y1 = 0
	Vassoura_dx1 = 0
	Vassoura_dy1 = 0

  --Dimensões Morcego:
  morcego_x1 = 157
  morcego_x2 = 118

  --Morte click:
  x_click = 0
  y_click = 0

end

function love.draw()
    love.graphics.draw(morcego,eixo_x,eixo_y)
    love.graphics.draw(vassoura, Vassoura_x1, Vassoura_y1)

    
end

function love.update(dt)





--[[

    if eixo_andar_controle_x == 0 then
      eixo_x = eixo_x + math.random(1, 5)
    end
  
    if eixo_andar_controle_x == 1 then
      eixo_x = eixo_x - math.random(1, 5)
    end

    if eixo_x >= eixo_x_limite then
      eixo_andar_controle_x = 1
    end

    if eixo_x <= 0 then
      eixo_andar_controle_x = 0
    end

    ------------------------------------------------------------

    if eixo_andar_controle_y == false then
      eixo_y = eixo_y + math.random(1, 5)
    end

    if eixo_andar_controle_y == true then
      eixo_y = eixo_y - math.random(1, 5)
    end

    if eixo_y >= eixo_y_limite then
      eixo_andar_controle_y = true
    end

    if eixo_y <= 0 then
      eixo_andar_controle_y = false
 
    
    end --]]
end

function love.mousemoved( x, y, dx, dy, istouch )

	Vassoura_x1 = x
	Vassoura_y1 = y
	Vassoura_dx1 = dx
	Vassoura_dy1 = dy

end

function love.mousepressed(x, y, button, istouch)
   if button == 1 then
   end
end

function love.mousepressed(x, y, button, istouch)
  if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      x_click = x
      y_click = y
      if x_click >= 

      end
  end
end