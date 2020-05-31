.class Lcom/android/server/ThemeService$ThemeObserver;
.super Landroid/database/ContentObserver;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ThemeService;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/ThemeService$ThemeObserver;->this$0:Lcom/android/server/ThemeService;

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->this$0:Lcom/android/server/ThemeService;

    invoke-static {v0}, Lcom/android/server/ThemeService;->-wrap1(Lcom/android/server/ThemeService;)V

    .line 201
    return-void
.end method

.method protected register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-boolean v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->this$0:Lcom/android/server/ThemeService;

    invoke-static {v0}, Lcom/android/server/ThemeService;->-get0(Lcom/android/server/ThemeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "theme_primary_color"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->this$0:Lcom/android/server/ThemeService;

    invoke-static {v0}, Lcom/android/server/ThemeService;->-get0(Lcom/android/server/ThemeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "theme_accent_color"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iput-boolean v2, p0, Lcom/android/server/ThemeService$ThemeObserver;->mRegistered:Z

    .line 212
    iget-object v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->this$0:Lcom/android/server/ThemeService;

    invoke-static {v0}, Lcom/android/server/ThemeService;->-wrap0(Lcom/android/server/ThemeService;)V

    .line 205
    :cond_0
    return-void
.end method

.method protected unregister()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->this$0:Lcom/android/server/ThemeService;

    invoke-static {v0}, Lcom/android/server/ThemeService;->-get0(Lcom/android/server/ThemeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThemeService$ThemeObserver;->mRegistered:Z

    .line 216
    :cond_0
    return-void
.end method
