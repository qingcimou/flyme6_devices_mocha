.class Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/app/IThemeCallback$Stub;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/app/IThemeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackAdded(II)V
    .locals 1
    .param p1, "themeMode"    # I
    .param p2, "color"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-static {v0, p2}, Lcom/android/server/am/AppErrorDialog;->-set0(Lcom/android/server/am/AppErrorDialog;I)I

    .line 162
    return-void
.end method

.method public onThemeChanged(II)V
    .locals 0
    .param p1, "themeMode"    # I
    .param p2, "color"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppErrorDialog$1;->onCallbackAdded(II)V

    .line 157
    return-void
.end method
