@clock = () ->
  weeks = new Array('SUNDAY', 'MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY', 'SATURDAY')
  now = new Date
  y = now.getFullYear()
  mo = now.getMonth() + 1
  d = now.getDate()
  w = weeks[now.getDay()]
  h = now.getHours()
  mi = now.getMinutes()
  s = now.getSeconds()

  if mo < 10
    mo = '0' + mo
  if d < 10
    d = '0' + d
  if mi < 10
    mi = '0' + mi
  if s < 10
    s = '0' + s

  document.getElementById('clock_year').innerHTML = y
  document.getElementById('clock_date').innerHTML = mo + '/' + d
  document.getElementById('clock_time').innerHTML = h + ':' + mi + ':' + s
  document.getElementById('clock_weeks').innerHTML = w
  return

setInterval clock, 1000