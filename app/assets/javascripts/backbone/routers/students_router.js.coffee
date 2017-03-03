class Interview.Routers.StudentsRouter extends Backbone.Router
  initialize: (options) ->
    @students = new Interview.Collections.StudentsCollection()
    @students.reset options.students


  routes:
    "index"    : "index"
    ".*"        : "index"

  index: ->
    @view = new Interview.Views.Students.IndexView(collection: @students)
    $("#students").html(@view.render().el)