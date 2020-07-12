import common
import edify_generator
import os

def ModifyBegin(edify):
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ifelse(is_mounted("/data"), unmount("/data"));
ui_print("******************************************");
ui_print("* Shield Flyme6 based on Android7.1.2 For MiPad");
ui_print("* Powered by qcmsmile");
ui_print("* Now loading Flyme6...");
ui_print("******************************************");\n''' + edify.script[0]


def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)

