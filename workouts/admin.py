from django.contrib import admin
from workouts.models import Workout, Series, TrainingProgram


class SeriesAdmin(admin.ModelAdmin):
    list_display = ['date', 'workout', 'number', 'rep', 'painfulness']


admin.site.register(Series, SeriesAdmin)
admin.site.register(Workout)
admin.site.register(TrainingProgram)

