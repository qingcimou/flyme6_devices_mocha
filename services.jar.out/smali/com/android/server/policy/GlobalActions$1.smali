.class Lcom/android/server/policy/GlobalActions$1;
.super Landroid/app/IThemeCallback$Stub;
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
    .line 157
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/app/IThemeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackAdded(II)V
    .locals 0
    .param p1, "themeMode"    # I
    .param p2, "color"    # I

    .prologue
    .line 166
    invoke-static {p2}, Lcom/android/server/policy/GlobalActions;->-set3(I)I

    .line 165
    return-void
.end method

.method public onThemeChanged(II)V
    .locals 0
    .param p1, "themeMode"    # I
    .param p2, "color"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/GlobalActions$1;->onCallbackAdded(II)V

    .line 160
    return-void
.end method
