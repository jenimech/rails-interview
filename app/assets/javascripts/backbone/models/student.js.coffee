class Interview.Models.Student extends Backbone.Model
  paramRoot: 'student'

  defaults:
    firstname: null
    lastname: null
    favoritefood: null
    favoritecolor: null
    favoritemovie: null
    name: null
    movie: null

class Interview.Collections.StudentsCollection extends Backbone.Collection
  model: Interview.Models.Student
  url: '/students'
