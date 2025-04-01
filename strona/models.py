from django.db import models

from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel


class StronaPage(Page):
    opis = RichTextField(blank=True)
    link_text = models.TextField(blank=True)
    link = models.CharField(max_length=255, blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('opis', classname="full"),
        FieldPanel('link_text', classname="full"),
        FieldPanel('link', classname="full"),
    ]

    # for field in ["milicki", "beret", "monika", "comment"]:
    #     content_panels.append(FieldPanel(field, classname="full"))