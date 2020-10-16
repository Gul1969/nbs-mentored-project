import unittest
import requests
import pytest
import requests_mock

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

class TestUsername(TestBase):
    def test_username(self):
        with requests_mock.mock() as m:
            m.get('http://service3:5002', json={'0':'0','1':'1','2':'2','3':'3','4':'4','5':'5'})
            m.get('http://service2:5001', json={'0':'a','1':'b','2':'c','3':'d','4':'e','5':'f'})

            response = self.client.get(
                url_for('index')
            )
            self.assertIn(b'Username:', response.data)

    def test_prize(self):
        with requests_mock.mock() as m:
            m.get('http://service4:5003/a3d4f6g4d1', json={'prize':"£100"})
            response = self.client.get(
                url_for('prize', username='a3d4f6g4d1')
            )
