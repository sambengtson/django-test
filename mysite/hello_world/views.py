from django.shortcuts import render
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Person

@csrf_exempt
def hello_world(request):
    if request.method == 'POST':
        p = Person(first_name='test',last_name='test')
        p.save()
        return JsonResponse({'foo': 'bar'})
    else:
        return render(request, 'hello_world.html', {})
