from django.shortcuts import render
from django.views.generic import TemplateView
from workouts.models import Series
from workouts.charts import WorkoutChart

# Create your views here.
# User should see its series summary with graphics


class IndexView(TemplateView):

    template_name = 'workouts/index.html'

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        workout_chart = WorkoutChart()
        context['workout_chart'] = workout_chart
        return context






