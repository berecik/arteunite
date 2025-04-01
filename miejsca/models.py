from django.db import models

from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel


class MiejscaPage(Page):
    opis = RichTextField(blank=True)
    objasnienie = RichTextField(blank=True)
    komentarz = RichTextField(blank=True)
    zaproszenie = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('opis', classname="full"),
        FieldPanel('objasnienie', classname="full"),
        FieldPanel('komentarz', classname="full"),
        FieldPanel('zaproszenie', classname="full"),
    ]

    # for field in ["milicki", "beret", "monika", "comment"]:
    #     content_panels.append(FieldPanel(field, classname="full"))