CHART_SIZE = 100

generate_nums = (i) ->
  arr = ((Math.floor(Math.random()*10)+1) for n in [1..i])
  arr.unshift('data')
  arr

update_nums = (chart) ->
  arr = (Math.floor(Math.random()*10+1) for n in chart.data()[0].values)
  arr.unshift('data')
  arr

@nums = generate_nums(CHART_SIZE)

gen_chart = ->
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
    transition:
      duration: 0

run_update = (chart) =>
  t = setInterval(update_chart, 30)

update_chart = =>
  @chart.load
    columns: [ update_nums(@chart) ]

$ -> gen_chart()
$ -> run_update()
