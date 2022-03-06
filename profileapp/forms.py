from django.forms import ModelForm
from .models import Profile

class ProfileCreationForm(ModelForm):
    class Meta:
        model = Profile
        filed = ['image', 'nickname', 'message']