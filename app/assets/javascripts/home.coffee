CHART_SIZE = 10

generate_nums = (i) ->
  arr = []
  for n in [1..i]
    arr.push(Math.random(CHART_SIZE))
  arr.unshift 'data'
  arr

@nums = generate_nums(CHART_SIZE)

gen_chart = =>
  @chart = c3.generate
    data:
      columns:[ @nums ]
      type: 'bar'
    bar:
      width:
        ratio: 0.5
    legend:
      hide: true
    axis:
      x:
        tick:
          count: 1
      y:
        tick:
          count: 1

run_update = =>
  t = setInterval(update_chart, 35)

update_chart = =>
  @chart.load
    columns: [ generate_nums(CHART_SIZE) ]
    transition:
      duration: 35

$ -> gen_chart()
$ -> run_update()
