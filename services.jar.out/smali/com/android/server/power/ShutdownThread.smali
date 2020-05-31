.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static RECOVERY_COMMAND_FILE:Ljava/io/File; = null

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SOFT_REBOOT:Ljava/lang/String; = "soft_reboot"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

.field private static mRebootWipe:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method

.method static synthetic -get4()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->doSoftReboot()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 96
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 99
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery/command"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    .line 102
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    .line 118
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 120
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 121
    const/4 v1, 0x4

    .line 120
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 122
    const/16 v1, 0xd

    .line 120
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 343
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 344
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Shutdown sequence already running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 345
    return-void

    .line 347
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 351
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 374
    .local v2, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v3, "recovery-update"

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 375
    sget-object v3, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    :try_start_2
    new-instance v3, Ljava/lang/String;

    .line 378
    sget-object v6, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 377
    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 378
    const-string/jumbo v6, "wipe"

    .line 377
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 384
    :cond_1
    :goto_0
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 385
    sget-object v3, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 384
    :goto_1
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 386
    const v3, 0x1040195

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 387
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v3, :cond_5

    .line 388
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 389
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 390
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 391
    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 394
    const v3, 0x1040196

    .line 393
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    :goto_2
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 418
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 420
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 422
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 423
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 424
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 427
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 429
    :try_start_3
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 430
    const-string/jumbo v5, "ShutdownThread-cpu"

    const/4 v6, 0x1

    .line 429
    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 431
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 432
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 439
    :goto_3
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 440
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    :try_start_4
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 443
    const-string/jumbo v5, "ShutdownThread-screen"

    const/16 v6, 0x1a

    .line 442
    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 444
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 445
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 453
    :cond_2
    :goto_4
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v4, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 455
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 341
    return-void

    .line 342
    .end local v2    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .restart local v2    # "pd":Landroid/app/ProgressDialog;
    :cond_3
    move v3, v5

    .line 385
    goto/16 :goto_1

    :cond_4
    move v3, v4

    .line 384
    goto/16 :goto_1

    .line 396
    :cond_5
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 398
    const v3, 0x1040198

    .line 397
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 400
    :cond_6
    const-string/jumbo v3, "recovery"

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    if-eqz v3, :cond_7

    .line 402
    const v3, 0x1040199

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    const v3, 0x104019a

    .line 403
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_2

    .line 407
    :cond_7
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_8

    .line 408
    const v3, 0x1040023

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    const v3, 0x1040025

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 415
    :goto_5
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_2

    .line 411
    :cond_8
    const v3, 0x1040191

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    const v3, 0x104019b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 446
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 447
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 379
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 12
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 773
    const-string/jumbo v1, "com.qti.server.power.ShutdownOem"

    .line 774
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    const-string/jumbo v2, "rebootOrShutdown"

    .line 776
    .local v2, "deviceShutdownMethodName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 779
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 780
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 770
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 783
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 784
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown exception while trying to invoke "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 786
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 787
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 781
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v6

    .line 782
    .local v6, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_3
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to find method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 788
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 789
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown exception while loading class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static doSoftReboot()V
    .locals 4

    .prologue
    .line 272
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 273
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "failure trying to perform soft reboot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 892
    invoke-static {p0}, Lcom/android/server/policy/GlobalActions;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static isAdvancedRebootPossible(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 157
    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 158
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 160
    const-string/jumbo v6, "advanced_reboot"

    .line 159
    invoke-static {v5, v6, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 160
    const/4 v6, 0x1

    .line 159
    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    .line 161
    .local v0, "advancedRebootEnabled":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x1

    .line 163
    .local v1, "isPrimaryUser":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v4

    .end local v1    # "isPrimaryUser":Z
    :cond_1
    return v1

    .line 158
    .end local v0    # "advancedRebootEnabled":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "keyguardLocked":Z
    goto :goto_0

    .line 159
    .end local v2    # "keyguardLocked":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "advancedRebootEnabled":Z
    goto :goto_1

    .line 161
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isPrimaryUser":Z
    goto :goto_2
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, "mContext":Landroid/content/Context;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 314
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 315
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 316
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 317
    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 311
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 803
    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 804
    if-eqz p1, :cond_1

    .line 805
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 807
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 p2, 0x0

    .line 827
    .end local p2    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 801
    return-void

    .line 809
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    .line 811
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 813
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 821
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 814
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x1

    .line 328
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 329
    .local v0, "mContext":Landroid/content/Context;
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 330
    .local v1, "um":Landroid/os/UserManager;
    const-string/jumbo v2, "no_safe_boot"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 335
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 336
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 337
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 338
    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 327
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 631
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, "mContext":Landroid/content/Context;
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 151
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 152
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 153
    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 148
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v13, 0x0

    .line 169
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v11

    .line 170
    :try_start_0
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v10, :cond_0

    .line 171
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v12, "Request to shutdown already running, returning."

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 172
    return-void

    :cond_0
    monitor-exit v11

    .line 176
    const/4 v9, 0x0

    .line 179
    .local v9, "showRebootOption":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 180
    const-string/jumbo v11, "power_menu_actions"

    const/4 v12, -0x2

    .line 179
    invoke-static {v10, v11, v12}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "actions":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 183
    const v11, 0x1070049

    .line 182
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "actionsArray":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v1

    if-ge v5, v10, :cond_1

    .line 189
    aget-object v10, v1, v5

    const-string/jumbo v11, "restart"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 190
    const/4 v9, 0x1

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 195
    const v11, 0x10e0051

    .line 194
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 196
    .local v6, "longPressBehavior":I
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_7

    .line 197
    const v8, 0x104019f

    .line 201
    .local v8, "resourceId":I
    :goto_2
    if-eqz v9, :cond_2

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_9

    .line 205
    :cond_2
    :goto_3
    const-string/jumbo v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p1, :cond_d

    .line 208
    new-instance v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 209
    .local v3, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    .line 210
    .local v7, "mContext":Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isAdvancedRebootPossible(Landroid/content/Context;)Z

    move-result v2

    .line 212
    .local v2, "advancedReboot":Z
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_3

    .line 213
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 214
    sput-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 216
    :cond_3
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_a

    .line 218
    const v10, 0x104019e

    .line 216
    :goto_4
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 223
    .local v4, "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz v2, :cond_4

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_c

    .line 224
    :cond_4
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 232
    :goto_5
    new-instance v10, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v10, v2, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(ZLandroid/content/Context;)V

    .line 231
    const v11, 0x1040013

    invoke-virtual {v4, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    const v10, 0x1040009

    invoke-virtual {v4, v10, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    sput-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 260
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v10, v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 261
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    .line 263
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 166
    .end local v2    # "advancedReboot":Z
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "mContext":Landroid/content/Context;
    :goto_6
    return-void

    .line 169
    .end local v0    # "actions":Ljava/lang/String;
    .end local v1    # "actionsArray":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "longPressBehavior":I
    .end local v8    # "resourceId":I
    .end local v9    # "showRebootOption":Z
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 185
    .restart local v0    # "actions":Ljava/lang/String;
    .restart local v9    # "showRebootOption":Z
    :cond_5
    const-string/jumbo v10, "\\|"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "actionsArray":[Ljava/lang/String;
    goto/16 :goto_0

    .line 188
    .restart local v5    # "i":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 198
    .restart local v6    # "longPressBehavior":I
    :cond_7
    const/4 v10, 0x2

    if-ne v6, v10, :cond_8

    .line 199
    const v8, 0x104019d

    .restart local v8    # "resourceId":I
    goto/16 :goto_2

    .line 200
    .end local v8    # "resourceId":I
    :cond_8
    const v8, 0x104019c

    .restart local v8    # "resourceId":I
    goto/16 :goto_2

    .line 202
    :cond_9
    const v8, 0x1040024

    goto/16 :goto_3

    .line 219
    .restart local v2    # "advancedReboot":Z
    .restart local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v7    # "mContext":Landroid/content/Context;
    :cond_a
    if-eqz v9, :cond_b

    .line 220
    const v10, 0x1040023

    goto :goto_4

    .line 221
    :cond_b
    const v10, 0x1040191

    goto :goto_4

    .line 227
    .restart local v4    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_c
    const v10, 0x1070010

    .line 228
    const/4 v11, 0x0

    .line 226
    invoke-virtual {v4, v10, v11, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 265
    .end local v2    # "advancedReboot":Z
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "mContext":Landroid/content/Context;
    :cond_d
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_6
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .line 649
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 650
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 756
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 758
    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 762
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    return-void

    .line 759
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private uncrypt()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 832
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Calling uncrypt and monitoring the progress..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v2, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 855
    .local v2, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    new-array v0, v11, [Z

    .line 856
    .local v0, "done":[Z
    aput-boolean v10, v0, v10

    .line 857
    new-instance v3, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 872
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 875
    const-wide/32 v8, 0xdbba0

    :try_start_0
    invoke-virtual {v3, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    aget-boolean v7, v0, v10

    if-nez v7, :cond_0

    .line 879
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Timed out waiting for uncrypt."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/16 v5, 0x64

    .line 881
    .local v5, "uncryptTimeoutError":I
    const-string/jumbo v7, "uncrypt_time: %d\nuncrypt_error: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 882
    const/16 v9, 0x384

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    .line 881
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "timeoutMessage":Ljava/lang/String;
    :try_start_1
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v7, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 831
    .end local v4    # "timeoutMessage":Ljava/lang/String;
    .end local v5    # "uncryptTimeoutError":I
    :cond_0
    :goto_1
    return-void

    .line 876
    :catch_0
    move-exception v6

    .local v6, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 885
    .end local v6    # "unused":Ljava/lang/InterruptedException;
    .restart local v4    # "timeoutMessage":Ljava/lang/String;
    .restart local v5    # "uncryptTimeoutError":I
    :catch_1
    move-exception v1

    .line 886
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Failed to write timeout message to uncrypt status"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 461
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 458
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 30

    .prologue
    .line 470
    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 483
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 484
    .local v26, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 492
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 499
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 502
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 501
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .line 505
    .local v20, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 506
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    .line 508
    .local v14, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_e

    .line 509
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v14    # "delay":J
    :cond_1
    monitor-exit v4

    .line 522
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_2

    .line 523
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 526
    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 530
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 532
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_4

    .line 537
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 540
    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    .line 542
    check-cast v25, Lcom/android/server/pm/PackageManagerService;

    .line 544
    .local v25, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v25, :cond_5

    .line 545
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 547
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_6

    .line 548
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 552
    :cond_6
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 553
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_7

    .line 554
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 558
    :cond_7
    new-instance v24, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 565
    .local v24, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v18, v4, v8

    .line 570
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 573
    :try_start_2
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 572
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 574
    .local v23, "mount":Landroid/os/storage/IMountService;
    if-eqz v23, :cond_10

    .line 575
    invoke-interface/range {v23 .. v24}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 582
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_8

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    .line 584
    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_11

    .line 585
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v14    # "delay":J
    :cond_8
    monitor-exit v4

    .line 600
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_9

    .line 601
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 611
    :cond_9
    const-string/jumbo v2, "ro.alarm_boot"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 612
    .local v22, "isAlarmBoot":Z
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 614
    .local v12, "cryptState":Ljava/lang/String;
    if-eqz v22, :cond_b

    .line 615
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 616
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 614
    if-eqz v2, :cond_b

    .line 617
    :cond_a
    const-string/jumbo v2, "/persist/alarm/powerOffAlarmHandle"

    .line 618
    const-string/jumbo v4, "1"

    .line 617
    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_b
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "recovery"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 623
    const-string/jumbo v2, "/persist/alarm/timezone"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 469
    return-void

    .line 483
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v12    # "cryptState":Ljava/lang/String;
    .end local v18    # "endShutTime":J
    .end local v20    # "endTime":J
    .end local v22    # "isAlarmBoot":Z
    .end local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v26    # "reason":Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 511
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v14    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v26    # "reason":Ljava/lang/String;
    :cond_e
    :try_start_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_f

    .line 512
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    .line 513
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    .line 512
    mul-double v8, v8, v28

    .line 513
    const-wide v28, 0x40c3880000000000L    # 10000.0

    .line 512
    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 514
    .local v27, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 517
    .end local v27    # "status":I
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 518
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .line 505
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 533
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 577
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v18    # "endShutTime":J
    .restart local v23    # "mount":Landroid/os/storage/IMountService;
    .restart local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_10
    :try_start_6
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    .line 579
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v16

    .line 580
    .local v16, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 570
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 587
    .restart local v14    # "delay":J
    :cond_11
    :try_start_8
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_12

    .line 588
    const-wide/16 v8, 0x4e20

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    .line 589
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    .line 588
    mul-double v8, v8, v28

    .line 590
    const-wide v28, 0x40d3880000000000L    # 20000.0

    .line 588
    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 591
    .restart local v27    # "status":I
    add-int/lit8 v27, v27, 0x12

    .line 592
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 595
    .end local v27    # "status":I
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 596
    :catch_3
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4

    .line 625
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "cryptState":Ljava/lang/String;
    .restart local v22    # "isAlarmBoot":Z
    :cond_13
    const-string/jumbo v2, "/persist/alarm/timezone"

    .line 626
    const-string/jumbo v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
