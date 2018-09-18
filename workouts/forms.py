from django import forms
from workouts.models import Workout, Series

class WorkoutForm(forms.Form):
    """The main and unique form to enter the training type
    (which will then be set from database), and with all
    workouts of the training pre-filled, with the series
    ready to be filled with their repetitions. The date
    is preset with the current day.
    """

