from django.db import models

from wagtail.models import Page
from wagtail.fields import RichTextField
from wagtail.admin.panels import FieldPanel


class ContactPage(Page):
    # quote = models.TextField(blank=True)
    # quote_author = models.TextField(blank=True)

    content_panels = Page.content_panels
    #
    # for field in []:
    #     content_panels.append(FieldPanel(field, classname="full"))