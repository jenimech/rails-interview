Interview.Views.Students ||= {}

class Interview.Views.Students.IndexView extends Backbone.View
  template: JST["backbone/templates/students/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)
    @render()

  addAll: () =>
    @collection.each(@addOne)

  addOne: (student) =>
    view = new Interview.Views.Students.StudentView({model : student})
    @$("tbody").append(view.render().el)

  events: 
    'change #search_by_movie' : "filter"

  filter: (ev) =>
    movie = ev.target.value
    #// view = new Interview.Views.Students.StudentView({model : ev})
    window.router = new Interview.Routers.StudentsRouter({data: {movie: movie}});

  render: =>
    @$el.html(@template(students: @collection.toJSON() ))
    @addAll()

    return this
