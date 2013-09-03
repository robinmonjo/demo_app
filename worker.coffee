


sayYo = () ->
  console.log "YOUHOU"
  run()
  
run = () ->
  setTimeout sayYo, 5000

run()