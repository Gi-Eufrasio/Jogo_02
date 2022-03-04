function love.load()	
  morcego = love.graphics.newImage('assets/morcego1.png')
  print("test log")
  eixo_x = 100
  eixo_x_limite = 500
  eixo_andar_controle_x = 0

  eixo_y = 100
  eixo_y_limite = 500
  eixo_andar_controle_y = false
end

function love.draw()
    love.graphics.draw(morcego,eixo_x,eixo_y)
end

function love.update(dt)

    if eixo_andar_controle_x == 0 then
      eixo_x = eixo_x + 5
    end
  
    if eixo_andar_controle_x == 1 then
      eixo_x = eixo_x - 5
    end

    if eixo_x == eixo_x_limite then
      eixo_andar_controle_x = 1
    end

    if eixo_x == 100 then
      eixo_andar_controle_x = 0
    end

    ------------------------------------------------------------

    if eixo_andar_controle_y == false then
      eixo_y = eixo_y + 5
    end

    if eixo_andar_controle_y == true then
      eixo_y = eixo_y - 5
    end

    if eixo_y == eixo_y_limite then
      eixo_andar_controle_y = true
    end

    if eixo_y == 100 then
      eixo_andar_controle_y = false

    
    
    end
end

function love.mousemoved( x, y, dx, dy, istouch )
end

function love.mousepressed(x, y, button, istouch)
   if button == 1 then
   end
end