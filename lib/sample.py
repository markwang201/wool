# -*- coding: utf-8 -*-

# 插件加载方法：
# 先运行 qqbot ，启动成功后，在另一个命令行窗口输入： qq plug qqbot.plugins.sample
from qqbot.utf8logger import CRITICAL, ERROR, WARN, INFO, DEBUG
import pdb
import requests

def onQQMessage(bot, contact, member, content):
    if content == '-hello':
        pdb.set_trace()
        bot.SendTo(contact, '你好，我是QQ机器人333')
    elif content == '-stop':
        bot.SendTo(contact, 'QQ机器人已关闭')
        bot.Stop()
    if contact.ctype == 'group':
        if not bot.isMe(contact, member):
            #pdb.set_trace()
            payload = {'message': content}
            res = requests.get("http://localhost:3001/qqbot_api", params=payload)
            str_len = len(res.text)
            if str_len > 0 and str_len < 200:
                bot.SendTo(contact, res.text)