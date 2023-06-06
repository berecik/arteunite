from django.shortcuts import redirect
from django.conf import settings
from django.views import View
from django.core.mail import send_mail

from .models import Contact


class ContactPost(View):
    def post(self, request):
        print(request.POST)
        contact = Contact()
        contact.page = request.POST.get('page')
        contact.name = request.POST.get('name')
        contact.newsletter = 'newsletter' in request.POST
        contact.email = request.POST.get('email')
        contact.find_us = request.POST.get('find-us')
        contact.message = request.POST.get('message')
        contact.save()

        subject = "Ekipa Arte Unite pozdrawia!"
        welcome_message = f"""Witaj {contact.name}
Właśnie zapisałeś się do naszego newslettera, czyli po polsku informatora o tym, co u nas słychać i czym się aktualnie zajmujemy. 
W najbliższym czasie będziemy też opisywać postępy zbiórki społecznościowej (crowdfundingu) zorganizowanej przez nasze stowarzyszenie na platformie zrzutka.pl 
Będą też relacje z postępu prac, za zebrane pieniądze. Podamy również możliwości przyłączenia się do bezpośrednich działań w formie wolontariatu. 
Oczywiście będziesz mieć też dostęp do informacji w wszelkich spotkaniach i imprezach, które będą organizowane przez nas i dla nas. Dobrze jest mieć taki kontakt, ponieważ w przyszłości może to prowadzić do bardziej bezpośrednich znajomości i kontaktów, no i przede wszystkim do wspólnego działania, do którego serdecznie Cię zapraszamy. 
W trakcie trwania różnych naszych akcji i warsztatów, będziesz mógł / mogła dowiedzieć się jak kształtować swoje życie w stronę niezależności i wewnętrznej wolności. Wszyscy razem możemy tworzyć coraz większą sieć ludzi, wzajemnie wspierających się w dążeniu do świadomego życia tutaj, na naszej pięknej Ziemi. 

Ogromne dzięki za dołączenie do nas.
Ekipa Arte Unite"""

        send_mail(subject, welcome_message, 'unite@wp.pl', [contact.email], fail_silently=True)

        return redirect(to="/")