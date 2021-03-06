from django.db import models

from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel


class DolaczPage(Page):
    opis = RichTextField(blank=True)
    link_text = models.TextField(blank=True)
    link = models.CharField(max_length=255, blank=True)
    pokaz_imie = models.BooleanField(default=True)
    pokaz_email = models.BooleanField(default=True)
    pokaz_jak_sie_dowiedziales = models.BooleanField(default=True)
    pokaz_newsletter = models.BooleanField(default=True)
    pokaz_napisz_do_nas = models.BooleanField(default=True)

    content_panels = Page.content_panels + [
        FieldPanel('opis', classname="full"),
        FieldPanel('link_text', classname="full"),
        FieldPanel('link', classname="full"),
        FieldPanel('pokaz_imie', classname="full"),
        FieldPanel('pokaz_email', classname="full"),
        FieldPanel('pokaz_jak_sie_dowiedziales', classname="full"),
        FieldPanel('pokaz_newsletter', classname="full"),
        FieldPanel('pokaz_napisz_do_nas', classname="full"),
    ]

    # for field in ["milicki", "beret", "monika", "comment"]:
    #     content_panels.append(FieldPanel(field, classname="full"))