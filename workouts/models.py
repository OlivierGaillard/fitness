from django.db import models
from datetime import date


class Workout(models.Model):
    name = models.CharField(max_length=50)
    weight = models.PositiveSmallIntegerField(null=True, blank=True)
    note = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.name


class TrainingProgram(models.Model):
    workouts = models.ManyToManyField(Workout)
    name = models.CharField(max_length=100, default="Beginner")

    def __str__(self):
        return self.name


class Series(models.Model):

    class Meta:
        verbose_name_plural = 'Series'
        ordering = ['-date', 'number']
        unique_together = ['date', 'workout', 'number', 'rep']

    PAINFULNESS_GRADES = (
        ('1', 'not easy'),
        ('2', 'painful'),
        ('3', 'max out')
        )

    SERIES_TYPE = (
        ('1', 'descending pyramid'),
        ('2', 'ascending pyramid')
    )

    date = models.DateField(default=date.today)
    training = models.ForeignKey(TrainingProgram, on_delete=models.CASCADE, null=True)
    workout = models.ForeignKey(Workout, on_delete=models.CASCADE, default='Beginner')
    number = models.PositiveSmallIntegerField(help_text="Serie number", default=1)
    rep = models.PositiveSmallIntegerField(help_text="Amount of repetitions")
    type = models.CharField(max_length=1, choices=SERIES_TYPE, default='1', null=True)
    painfulness = models.CharField(choices=PAINFULNESS_GRADES, max_length=1, null=True, blank=True)
    note = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.workout.name






