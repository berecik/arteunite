from django.db import models

from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel


class MisjaPage(Page):
    opis = RichTextField(blank=True)
    objasnienie = RichTextField(blank=True)
    komentarz_1 = RichTextField(blank=True)
    komentarz_2 = RichTextField(blank=True)
    komentarz_3 = RichTextField(blank=True)
    podsumowanie = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('opis', classname="full"),
        FieldPanel('objasnienie', classname="full"),
        FieldPanel('komentarz_1', classname="full"),
        FieldPanel('komentarz_2', classname="full"),
        FieldPanel('komentarz_3', classname="full"),
        FieldPanel('podsumowanie', classname="full"),
    ]

    # for field in ["milicki", "beret", "monika", "comment"]:
    #     content_panels.append(FieldPanel(field, classname="full"))