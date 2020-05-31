.class public Lcom/android/server/ThemeService;
.super Landroid/app/IThemeService$Stub;
.source "ThemeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThemeService$ThemeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/IThemeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mObserver:Lcom/android/server/ThemeService$ThemeObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/ThemeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ThemeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ThemeService;->dispatchCallbackAdded()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/ThemeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ThemeService;->dispatchThemeSettingChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/IThemeService$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/ThemeService$ThemeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ThemeService$ThemeObserver;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mObserver:Lcom/android/server/ThemeService$ThemeObserver;

    .line 53
    iget-object v0, p0, Lcom/android/server/ThemeService;->mObserver:Lcom/android/server/ThemeService$ThemeObserver;

    invoke-virtual {v0}, Lcom/android/server/ThemeService$ThemeObserver;->register()V

    .line 50
    return-void
.end method

.method private dispatchCallbackAdded()V
    .locals 6

    .prologue
    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IThemeCallback;

    .line 167
    .local v0, "callback":Landroid/app/IThemeCallback;
    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/ThemeService;->getAccentColor()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ThemeService;->getTheme(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/app/IThemeCallback;->onCallbackAdded(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NullPointer while calling onCallbackAdded: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 163
    .end local v0    # "callback":Landroid/app/IThemeCallback;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    return-void

    .line 170
    .restart local v0    # "callback":Landroid/app/IThemeCallback;
    :catch_1
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private dispatchThemeSettingChanged()V
    .locals 6

    .prologue
    .line 179
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IThemeCallback;

    .line 182
    .local v0, "callback":Landroid/app/IThemeCallback;
    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/ThemeService;->getAccentColor()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ThemeService;->getTheme(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/app/IThemeCallback;->onThemeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NullPointer while calling onCallbackAdded: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 178
    .end local v0    # "callback":Landroid/app/IThemeCallback;
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    return-void

    .line 185
    .restart local v0    # "callback":Landroid/app/IThemeCallback;
    :catch_1
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private getAccentColor()I
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "theme_accent_color"

    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrimaryTheme(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 142
    :pswitch_0
    const v0, 0x10302e6

    return v0

    .line 136
    :pswitch_1
    const v0, 0x10302e1

    return v0

    .line 138
    :pswitch_2
    const v0, 0x10302e4

    return v0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTheme(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 89
    .local v0, "isDarkMode":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 90
    .local v1, "isGreymode":Z
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/ThemeService;->getPrimaryTheme(I)I

    move-result v2

    return v2

    .line 88
    .end local v0    # "isDarkMode":Z
    .end local v1    # "isGreymode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isDarkMode":Z
    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isGreymode":Z
    goto :goto_1

    .line 92
    :pswitch_0
    if-eqz v0, :cond_2

    const v2, 0x10302fa

    :goto_2
    return v2

    .line 93
    :cond_2
    if-eqz v1, :cond_3

    const v2, 0x10302fb

    goto :goto_2

    .line 94
    :cond_3
    const v2, 0x10302fc

    goto :goto_2

    .line 96
    :pswitch_1
    if-eqz v0, :cond_4

    const v2, 0x1030312

    :goto_3
    return v2

    .line 97
    :cond_4
    if-eqz v1, :cond_5

    const v2, 0x1030313

    goto :goto_3

    .line 98
    :cond_5
    const v2, 0x1030314

    goto :goto_3

    .line 100
    :pswitch_2
    if-eqz v0, :cond_6

    const v2, 0x10302ee

    :goto_4
    return v2

    .line 101
    :cond_6
    if-eqz v1, :cond_7

    const v2, 0x10302ef

    goto :goto_4

    .line 102
    :cond_7
    const v2, 0x10302f0

    goto :goto_4

    .line 104
    :pswitch_3
    if-eqz v0, :cond_8

    const v2, 0x1030300

    :goto_5
    return v2

    .line 105
    :cond_8
    if-eqz v1, :cond_9

    const v2, 0x1030301

    goto :goto_5

    .line 106
    :cond_9
    const v2, 0x1030302

    goto :goto_5

    .line 108
    :pswitch_4
    if-eqz v0, :cond_a

    const v2, 0x10302f4

    :goto_6
    return v2

    .line 109
    :cond_a
    if-eqz v1, :cond_b

    const v2, 0x10302f5

    goto :goto_6

    .line 110
    :cond_b
    const v2, 0x10302f6

    goto :goto_6

    .line 112
    :pswitch_5
    if-eqz v0, :cond_c

    const v2, 0x10302e8

    :goto_7
    return v2

    .line 113
    :cond_c
    if-eqz v1, :cond_d

    const v2, 0x10302e9

    goto :goto_7

    .line 114
    :cond_d
    const v2, 0x10302ea

    goto :goto_7

    .line 116
    :pswitch_6
    if-eqz v0, :cond_e

    const v2, 0x103030c

    :goto_8
    return v2

    .line 117
    :cond_e
    if-eqz v1, :cond_f

    const v2, 0x103030d

    goto :goto_8

    .line 118
    :cond_f
    const v2, 0x103030e

    goto :goto_8

    .line 120
    :pswitch_7
    if-eqz v0, :cond_10

    const v2, 0x1030306

    :goto_9
    return v2

    .line 121
    :cond_10
    if-eqz v1, :cond_11

    const v2, 0x1030307

    goto :goto_9

    .line 122
    :cond_11
    const v2, 0x1030308

    goto :goto_9

    .line 124
    :pswitch_8
    if-eqz v0, :cond_12

    const v2, 0x1030318

    :goto_a
    return v2

    .line 125
    :cond_12
    if-eqz v1, :cond_13

    const v2, 0x1030319

    goto :goto_a

    .line 126
    :cond_13
    const v2, 0x103031a

    goto :goto_a

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getThemeMode()I
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "theme_primary_color"

    const/4 v2, 0x0

    .line 147
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static returnToDefaultTheme(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "theme_primary_color"

    .line 157
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "theme_accent_color"

    .line 159
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/app/IThemeCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/IThemeCallback;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ThemeService;->dispatchCallbackAdded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public binderDied()V
    .locals 7

    .prologue
    .line 58
    iget-object v5, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 59
    iget-object v5, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IThemeCallback;

    .line 61
    .local v0, "callback":Landroid/app/IThemeCallback;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ThemeService;->returnToDefaultTheme(Landroid/content/Context;)V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/server/ThemeService;->getThemeMode()I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/ThemeService;->getAccentColor()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/ThemeService;->getTheme(I)I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/app/IThemeCallback;->onThemeChanged(II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "NullPointer while calling onThemeChanged: "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to call onThemeChanged: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 65
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/DeadObjectException;
    sget-object v5, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Death object while calling onThemeChanged: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v0    # "callback":Landroid/app/IThemeCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    iget-object v5, p0, Lcom/android/server/ThemeService;->mCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 74
    iget-object v5, p0, Lcom/android/server/ThemeService;->mObserver:Lcom/android/server/ThemeService$ThemeObserver;

    invoke-virtual {v5}, Lcom/android/server/ThemeService$ThemeObserver;->unregister()V

    .line 57
    return-void
.end method
