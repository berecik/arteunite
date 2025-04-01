from django.db import models

from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel


class HomePage(Page):
    long_name = RichTextField(blank=True)

    quote = models.TextField(blank=True)
    quote_author = models.TextField(blank=True)

    earth_head = models.TextField(blank=True)
    earth = RichTextField(blank=True)

    star_head = models.TextField(blank=True)
    star = RichTextField(blank=True)

    flame_head = models.TextField(blank=True)
    flame = RichTextField(blank=True)

    wolna_ziemia = RichTextField(blank=True)
    stodola = RichTextField(blank=True)
    workshop = RichTextField(blank=True)

    filozofia_title = models.TextField(blank=True)
    filozofia = RichTextField(blank=True)
    filozofia_link = models.TextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('long_name', classname="full"),
    ]

    for field in ["quote", "quote_author", "earth_head", "earth", "star_head", "star", "flame_head", "flame", "wolna_ziemia", "stodola", "workshop", "filozofia_title", "filozofia", "filozofia_link"]:
        content_panels.append(FieldPanel(field, classname="full"))