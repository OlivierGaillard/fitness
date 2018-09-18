from jchart import Chart
from jchart.config import Axes, DataSet, rgba
from django.db import connection
from workouts.models import Workout, Series


class WorkoutChart(Chart):
    """ Goal is to obtain the amount of repetitions grouped by date."""

    chart_type = 'bar'

    def get_labels(self, workout_id):
        cursor = connection.cursor()
        sql = 'SELECT date FROM "public"."workouts_series" GROUP BY date ORDER BY date'
        cursor.execute(sql)
        range_data = cursor.fetchall()
        dates = [x for x in range_data]
        return dates

    def get_datasets(self, workout_id):
        cursor = connection.cursor()
        sql = 'SELECT SUM("rep"),"workout_id","date" FROM "public"."workouts_series"'
        sql += 'WHERE workout_id=%s' % workout_id
        sql += 'GROUP BY date, workout_id ORDER BY date'
        cursor.execute(sql)
        range_data = cursor.fetchall()
        print('all data', range_data)
        range_data = [i[0] for i in range_data]
        print('only rep', range_data)
        colors = [  #TODO mettre autant de couleurs que de dates
            rgba(255, 99, 132, 0.2),
            rgba(54, 162, 235, 0.2),
            rgba(255, 206, 86, 0.2),
            rgba(75, 192, 192, 0.2),
            rgba(153, 102, 255, 0.2),
            rgba(255, 99, 132, 0.2),
            rgba(255, 159, 64, 0.2),
            rgba(255, 99, 132, 0.2),
            rgba(153, 102, 255, 0.2),
            rgba(54, 162, 235, 0.2),
        ]

        return [DataSet(label='Bar Chart',
                        data=range_data,
                        borderWidth=1,
                        backgroundColor=colors,
                        borderColor=colors)]
