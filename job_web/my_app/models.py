from django.db import models


class Top20(models.Model):
    id = models.AutoField(primary_key=True)
    job_name = models.CharField(max_length=64, blank=True, null=True)
    num = models.IntegerField(blank=True, null=True)


class Company_type(models.Model):
    id = models.AutoField(primary_key=True)
    company_type = models.CharField(max_length=64, blank=True, null=True)
    num = models.IntegerField(blank=True, null=True)
