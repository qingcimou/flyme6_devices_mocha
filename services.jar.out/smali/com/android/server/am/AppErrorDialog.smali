.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$1;,
        Lcom/android/server/am/AppErrorDialog$2;,
        Lcom/android/server/am/AppErrorDialog$3;,
        Lcom/android/server/am/AppErrorDialog$Data;
    }
.end annotation


# static fields
.field static ALREADY_SHOWING:I = 0x0

.field static BACKGROUND_USER:I = 0x0

.field static final CANCEL:I = 0x7

.field static CANT_SHOW:I = 0x0

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x1

.field static final FORCE_QUIT_AND_REPORT:I = 0x2

.field static final MUTE:I = 0x5

.field static final RESTART:I = 0x3

.field static final TIMEOUT:I = 0x6


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsRestartable:Z

.field private mName:Ljava/lang/CharSequence;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRepeating:Z

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mThemeCallback:Landroid/app/IThemeCallback;

.field private mThemeManager:Landroid/app/ThemeManager;

.field private sTheme:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/AppErrorDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/AppErrorDialog;->sTheme:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    .line 50
    const/4 v0, -0x2

    sput v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    .line 51
    const/4 v0, -0x3

    sput v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v3, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mThemeCallback:Landroid/app/IThemeCallback;

    .line 180
    new-instance v3, Lcom/android/server/am/AppErrorDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v3, Lcom/android/server/am/AppErrorDialog$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppErrorDialog$3;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 71
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    iget-object v3, p3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 73
    iget-object v3, p3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 74
    iget-boolean v3, p3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    iput-boolean v3, p0, Lcom/android/server/am/AppErrorDialog;->mRepeating:Z

    .line 75
    iget-object v3, p3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_1

    iget-boolean v3, p3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 76
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 78
    .local v1, "bidi":Landroid/text/BidiFormatter;
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 81
    iget-boolean v3, p0, Lcom/android/server/am/AppErrorDialog;->mRepeating:Z

    if-eqz v3, :cond_2

    const v3, 0x1040411

    .line 80
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 83
    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mName:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 84
    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 80
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 94
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Application Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 101
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 107
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 108
    const-wide/32 v6, 0x493e0

    .line 106
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    return-void

    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "bidi":Landroid/text/BidiFormatter;
    :cond_1
    move v3, v4

    .line 75
    goto/16 :goto_0

    .line 82
    .restart local v1    # "bidi":Landroid/text/BidiFormatter;
    :cond_2
    const v3, 0x104040f

    goto/16 :goto_1

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mName:Ljava/lang/CharSequence;

    .line 88
    iget-boolean v3, p0, Lcom/android/server/am/AppErrorDialog;->mRepeating:Z

    if-eqz v3, :cond_4

    const v3, 0x1040412

    .line 87
    :goto_3
    new-array v5, v4, [Ljava/lang/Object;

    .line 90
    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mName:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 87
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 89
    :cond_4
    const v3, 0x1040410

    goto :goto_3
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    .line 199
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    :pswitch_0
    return-void

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 220
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x102033a
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v11, 0x102002b

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 115
    .local v3, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 117
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 118
    const-string/jumbo v12, "theme_primary_color"

    const/4 v13, 0x0

    .line 117
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 119
    .local v10, "themeMode":I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 120
    const-string/jumbo v12, "theme_accent_color"

    const/4 v13, 0x0

    .line 119
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "accentColor":I
    const-string/jumbo v11, "theme"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ThemeManager;

    iput-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mThemeManager:Landroid/app/ThemeManager;

    .line 122
    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mThemeManager:Landroid/app/ThemeManager;

    if-eqz v11, :cond_0

    .line 123
    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mThemeManager:Landroid/app/ThemeManager;

    iget-object v12, p0, Lcom/android/server/am/AppErrorDialog;->mThemeCallback:Landroid/app/IThemeCallback;

    invoke-virtual {v11, v12}, Landroid/app/ThemeManager;->addCallback(Landroid/app/IThemeCallback;)V

    .line 125
    :cond_0
    if-nez v10, :cond_1

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    iget v12, p0, Lcom/android/server/am/AppErrorDialog;->sTheme:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 129
    :cond_2
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 130
    const v12, 0x1090033

    const/4 v13, 0x1

    .line 129
    invoke-virtual {v11, v12, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    iget-boolean v11, p0, Lcom/android/server/am/AppErrorDialog;->mRepeating:Z

    if-nez v11, :cond_3

    iget-boolean v5, p0, Lcom/android/server/am/AppErrorDialog;->mIsRestartable:Z

    .line 133
    :goto_0
    iget-object v11, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v11, :cond_4

    const/4 v4, 0x1

    .line 135
    .local v4, "hasReceiver":Z
    :goto_1
    const v11, 0x102033d

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 136
    .local v8, "restart":Landroid/widget/TextView;
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    if-eqz v5, :cond_5

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const v11, 0x102033c

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 139
    .local v7, "report":Landroid/widget/TextView;
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    if-eqz v4, :cond_6

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    const v11, 0x102033a

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 142
    .local v1, "close":Landroid/widget/TextView;
    if-nez v5, :cond_7

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget-boolean v11, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v11, :cond_8

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 146
    const-string/jumbo v12, "development_settings_enabled"

    const/4 v13, 0x0

    .line 145
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v9, 0x1

    .line 147
    .local v9, "showMute":Z
    :goto_5
    const v11, 0x102033e

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 148
    .local v6, "mute":Landroid/widget/TextView;
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    if-eqz v9, :cond_9

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    const v11, 0x102032c

    invoke-virtual {p0, v11}, Lcom/android/server/am/AppErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void

    .line 132
    .end local v1    # "close":Landroid/widget/TextView;
    .end local v4    # "hasReceiver":Z
    .end local v6    # "mute":Landroid/widget/TextView;
    .end local v7    # "report":Landroid/widget/TextView;
    .end local v8    # "restart":Landroid/widget/TextView;
    .end local v9    # "showMute":Z
    :cond_3
    const/4 v5, 0x0

    .local v5, "hasRestart":Z
    goto :goto_0

    .line 133
    .end local v5    # "hasRestart":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "hasReceiver":Z
    goto :goto_1

    .line 137
    .restart local v8    # "restart":Landroid/widget/TextView;
    :cond_5
    const/16 v11, 0x8

    goto :goto_2

    .line 140
    .restart local v7    # "report":Landroid/widget/TextView;
    :cond_6
    const/16 v11, 0x8

    goto :goto_3

    .line 142
    .restart local v1    # "close":Landroid/widget/TextView;
    :cond_7
    const/16 v11, 0x8

    goto :goto_4

    .line 145
    :cond_8
    const/4 v9, 0x0

    .restart local v9    # "showMute":Z
    goto :goto_5

    .line 149
    .restart local v6    # "mute":Landroid/widget/TextView;
    :cond_9
    const/16 v11, 0x8

    goto :goto_6
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->onStop()V

    .line 177
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    return-void
.end method
