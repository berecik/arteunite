from django.db import models

from wagtail.core.models import Page
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel


class RwzPage(Page):
    opis = RichTextField(blank=True)
    objasnienie = RichTextField(blank=True)
    komentarz = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('opis', classname="full"),
        FieldPanel('objasnienie', classname="full"),
        FieldPanel('komentarz', classname="full"),
    ]

    # for field in ["milicki", "beret", "monika", "comment"]:
    #     content_panels.append(FieldPanel(field, classname="full"))