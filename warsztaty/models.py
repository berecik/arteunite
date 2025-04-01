from django.db import models

from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel


class WarsztatyPage(Page):
    opis = RichTextField(blank=True)
    zaproszenie = RichTextField(blank=True)
    milicki = RichTextField(blank=True)
    beret = RichTextField(blank=True)
    monika = RichTextField(blank=True)
    comment = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('opis', classname="full"),
        FieldPanel('zaproszenie', classname="full"),
        FieldPanel('milicki', classname="full"),
        FieldPanel('beret', classname="full"),
        FieldPanel('monika', classname="full"),
        FieldPanel('comment', classname="full"),
    ]

    # for field in ["milicki", "beret", "monika", "comment"]:
    #     content_panels.append(FieldPanel(field, classname="full"))