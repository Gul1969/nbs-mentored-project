import unittest
import requests
import pytest

from flask import url_for
from flask_testing import TestCase

from app import app


class TestBase(TestCase):
    def create_app(self):
        config_name = 'testing'
        app.config.update(
            WTF_CSRF_ENABLED=False,
            DEBUG=True
            )
        return app

    def setUp(self):
        print("-----------")

    def tearDown(self):
        print("--------")

class TestPrize(TestBase):
    def test_prize(self):
        response = self.client.get(
            url_for('index', username="a4g4hj6k4")
        )
        self.assertEqual(response.data, b'{\n  "prize": "\\u00a3100"\n}\n')
    
    def test_nothing(self):
        response = self.client.get(
            url_for('index', username="b4g4hj6k4")
        )
        self.assertEqual(response.data, b'{\n  "prize": "Nothing"\n}\n')        