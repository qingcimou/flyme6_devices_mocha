.class Lcom/android/server/policy/GlobalActions$3;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1410
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1409
    if-eqz v2, :cond_2

    .line 1411
    :cond_0
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1413
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1407
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1415
    :cond_2
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1418
    const-string/jumbo v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1419
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    .line 1418
    if-eqz v2, :cond_1

    .line 1420
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-set2(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1421
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_0

    .line 1423
    :cond_3
    const-string/jumbo v2, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1424
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions;->updatePowerMenuActions()V

    goto :goto_0
.end method
