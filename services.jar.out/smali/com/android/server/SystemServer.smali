.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10304d7

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_CELLULAR_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.cellular.WearCellularMediatorService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 246
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 242
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 436
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 437
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 438
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10304d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 435
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 238
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 396
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 395
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 398
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 401
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 402
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 412
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 423
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 424
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 398
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 404
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 418
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 431
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 394
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 390
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 264
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 270
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 282
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 302
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 307
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 308
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 313
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 308
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 317
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 321
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 325
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 333
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 336
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 339
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 343
    const/4 v0, -0x2

    .line 342
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 344
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 345
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 348
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 358
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 359
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 360
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 367
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 369
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 386
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    throw v0

    .line 371
    :catch_0
    move-exception v6

    .line 372
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 376
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 375
    throw v0
.end method

.method private startBootstrapServices()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v10, 0x80000

    .line 452
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 455
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 456
    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 455
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 457
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 458
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 464
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 468
    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 469
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 470
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 473
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 477
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 480
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 483
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 486
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 487
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 500
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 501
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 503
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 507
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 508
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 509
    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 508
    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 510
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 511
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 512
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_2

    .line 518
    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 520
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2

    .line 521
    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 523
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    .end local v1    # "disableOtaDexopt":Z
    :cond_2
    :goto_2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 533
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 534
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 540
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 543
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/om/OverlayManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 547
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 448
    return-void

    .line 489
    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 490
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .line 492
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_0

    .line 497
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 509
    goto/16 :goto_1

    .line 524
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 526
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 527
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 526
    throw v5
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 558
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 559
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 560
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 559
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 553
    return-void
.end method

.method private startOtherServices()V
    .locals 110

    .prologue
    .line 571
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 572
    .local v6, "context":Landroid/content/Context;
    const/16 v97, 0x0

    .line 573
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    const/16 v75, 0x0

    .line 574
    .local v75, "mountService":Landroid/os/storage/IMountService;
    const/16 v76, 0x0

    .line 575
    .local v76, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v81, 0x0

    .line 576
    .local v81, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v77, 0x0

    .line 577
    .local v77, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v26, 0x0

    .line 578
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v79, 0x0

    .line 579
    .local v79, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v89, 0x0

    .line 580
    .local v89, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v106, 0x0

    .line 581
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v86, 0x0

    .line 582
    .local v86, "serial":Lcom/android/server/SerialService;
    const/16 v82, 0x0

    .line 583
    .local v82, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v23, 0x0

    .line 584
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v63, 0x0

    .line 585
    .local v63, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v93, 0x0

    .line 586
    .local v93, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v29, 0x0

    .line 587
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 588
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v60, 0x0

    .line 589
    .local v60, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v104, 0x0

    .line 590
    .local v104, "wigigP2pService":Ljava/lang/Object;
    const/16 v105, 0x0

    .line 591
    .local v105, "wigigService":Ljava/lang/Object;
    const/16 v95, 0x0

    .line 593
    .local v95, "themeService":Lcom/android/server/ThemeService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 594
    .local v48, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 595
    .local v35, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 596
    .local v38, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 597
    .local v49, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 598
    .local v42, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 599
    .local v40, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 600
    .local v41, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 601
    .local v44, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 602
    const/4 v5, 0x0

    .line 601
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 603
    .local v39, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 604
    .local v47, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 605
    const/4 v5, 0x0

    .line 604
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 606
    .local v46, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 607
    const/4 v5, 0x0

    .line 606
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 608
    .local v51, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    .line 609
    const/4 v5, 0x0

    .line 608
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 610
    .local v50, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 611
    const/4 v5, 0x0

    .line 610
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 612
    .local v45, "disableSamplingProfiler":Z
    const-string/jumbo v4, "config.disable_consumerir"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 613
    .local v37, "disableConsumerIr":Z
    const-string/jumbo v4, "config.disable_vrmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 614
    .local v52, "disableVrManager":Z
    const-string/jumbo v4, "config.disable_cameraservice"

    .line 615
    const/4 v5, 0x0

    .line 614
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 617
    .local v36, "disableCameraService":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    .line 618
    .local v65, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 620
    .local v56, "enableWigig":Z
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 621
    const v5, 0x3f060005

    .line 620
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 622
    .local v57, "externalServer":Ljava/lang/String;
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 625
    .local v34, "disableAtlas":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 628
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 629
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 630
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 634
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 635
    new-instance v94, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v94

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_35

    .line 636
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v94, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 637
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 639
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 640
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 641
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 643
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 645
    if-nez v36, :cond_0

    .line 646
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 651
    :cond_0
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 653
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 655
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 657
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 659
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 661
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 663
    const-string/jumbo v4, "ThemeService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 664
    new-instance v96, Lcom/android/server/ThemeService;

    move-object/from16 v0, v96

    invoke-direct {v0, v6}, Lcom/android/server/ThemeService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_36

    .line 665
    .local v96, "themeService":Lcom/android/server/ThemeService;
    :try_start_2
    const-string/jumbo v4, "theme"

    .end local v95    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 666
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 668
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 669
    new-instance v98, Lcom/android/server/VibratorService;

    move-object/from16 v0, v98

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_37

    .line 670
    .local v98, "vibrator":Lcom/android/server/VibratorService;
    :try_start_3
    const-string/jumbo v4, "vibrator"

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 671
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 673
    if-nez v37, :cond_1

    .line 674
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 675
    new-instance v30, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_38

    .line 676
    .local v30, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_4
    const-string/jumbo v4, "consumer_ir"

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 677
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_39

    move-object/from16 v29, v30

    .line 680
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_1
    :try_start_5
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 682
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 684
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v100

    .line 686
    .local v100, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v100

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 687
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 689
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 690
    new-instance v64, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_38

    .line 691
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 693
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_40

    const/4 v4, 0x1

    move v5, v4

    .line 696
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_41

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v107, v0

    .line 694
    move-object/from16 v0, v64

    move/from16 v1, v107

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v106

    .line 697
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 698
    const-string/jumbo v4, "input"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 699
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 701
    if-nez v52, :cond_2

    .line 702
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 704
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 707
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v106

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 709
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 710
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/input/InputManagerService;->start()V

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 718
    if-eqz v65, :cond_42

    .line 719
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 733
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 737
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 739
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 741
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v95, v96

    .end local v96    # "themeService":Lcom/android/server/ThemeService;
    .local v95, "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v93, v94

    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v93, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v64

    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v63, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v97, v98

    .line 747
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "themeService":Lcom/android/server/ThemeService;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    .end local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v90, 0x0

    .line 748
    .local v90, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v84, 0x0

    .line 749
    .local v84, "notification":Landroid/app/INotificationManager;
    const/16 v66, 0x0

    .line 750
    .local v66, "location":Lcom/android/server/LocationManagerService;
    const/16 v31, 0x0

    .line 751
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v68, 0x0

    .line 753
    .local v68, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v70, 0x0

    .line 754
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v58, 0x0

    .line 757
    .local v58, "gestureService":Lcom/android/server/gesture/GestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 760
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 762
    :try_start_7
    const-string/jumbo v4, "accessibility"

    .line 763
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 762
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 767
    :goto_4
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 771
    :cond_3
    :try_start_8
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 776
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 777
    if-nez v48, :cond_4

    .line 778
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 795
    .end local v75    # "mountService":Landroid/os/storage/IMountService;
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 797
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_5

    .line 798
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 800
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 804
    :goto_7
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 807
    :cond_5
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 809
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 813
    :goto_8
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 815
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    .line 816
    if-nez v42, :cond_7

    .line 817
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 819
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 821
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 820
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v68

    .line 825
    .end local v68    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_9
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 827
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 831
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 838
    :cond_7
    if-nez v49, :cond_8

    .line 839
    const-string/jumbo v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 841
    :try_start_c
    new-instance v91, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v106

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 842
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v91, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_d
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_34

    move-object/from16 v90, v91

    .line 846
    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 849
    :cond_8
    if-nez v42, :cond_9

    .line 850
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 852
    :try_start_e
    const-string/jumbo v4, "clipboard"

    .line 853
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 852
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 857
    :goto_b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    :cond_9
    if-nez v40, :cond_a

    .line 861
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 863
    :try_start_f
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v76

    .line 864
    .local v76, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 868
    .end local v76    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 871
    :cond_a
    if-nez v42, :cond_b

    if-eqz v50, :cond_47

    .line 875
    :cond_b
    :goto_d
    if-nez v40, :cond_10

    .line 876
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 878
    :try_start_10
    new-instance v80, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v80

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 879
    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v80, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_11
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_33

    move-object/from16 v79, v80

    .line 883
    .end local v80    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 885
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 887
    :try_start_12
    move-object/from16 v0, v76

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v81

    .line 888
    .local v81, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v81

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_b

    .line 892
    .end local v81    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 896
    :try_start_13
    new-instance v78, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 896
    move-object/from16 v0, v78

    move-object/from16 v1, v81

    move-object/from16 v2, v76

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    .line 898
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v78, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_14
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_32

    move-object/from16 v77, v78

    .line 902
    .end local v78    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_10
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 904
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 909
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 912
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 911
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 914
    if-nez v44, :cond_c

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 918
    :cond_c
    if-eqz v56, :cond_d

    .line 920
    :try_start_15
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v102, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 923
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v107

    invoke-virtual/range {v107 .. v107}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v107

    .line 922
    move-object/from16 v0, v102

    move-object/from16 v1, v107

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 926
    .local v102, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 925
    move-object/from16 v0, v102

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v103

    .line 927
    .local v103, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    .line 928
    .local v33, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v104

    .line 929
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v104

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 933
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 932
    move-object/from16 v0, v102

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v101

    .line 934
    .local v101, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v101

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    .line 935
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v105

    .line 936
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v105

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_d

    .line 943
    .end local v33    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v101    # "wigigClass":Ljava/lang/Class;
    .end local v102    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v103    # "wigigP2pClass":Ljava/lang/Class;
    .end local v104    # "wigigP2pService":Ljava/lang/Object;
    .end local v105    # "wigigService":Ljava/lang/Object;
    :cond_d
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 943
    if-eqz v4, :cond_f

    .line 945
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 948
    :cond_f
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 950
    :try_start_16
    new-instance v27, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v27

    move-object/from16 v1, v76

    move-object/from16 v2, v81

    move-object/from16 v3, v77

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_e

    .line 952
    .end local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v27, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_17
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 953
    move-object/from16 v0, v81

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 954
    move-object/from16 v0, v77

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_31

    move-object/from16 v26, v27

    .line 958
    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 960
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 962
    :try_start_18
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v89

    .line 964
    .local v89, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 963
    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_f

    .line 968
    .end local v89    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 971
    :cond_10
    if-nez v42, :cond_11

    .line 972
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 974
    :try_start_19
    const-string/jumbo v4, "updatelock"

    .line 975
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 974
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_10

    .line 979
    :goto_15
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 982
    :cond_11
    if-nez v42, :cond_12

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 991
    :cond_12
    if-eqz v75, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_49

    .line 1000
    :cond_13
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1002
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1001
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v84

    .line 1003
    .local v84, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v77

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1007
    if-nez v38, :cond_14

    .line 1008
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1010
    :try_start_1a
    new-instance v67, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_12

    .line 1011
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .local v67, "location":Lcom/android/server/LocationManagerService;
    :try_start_1b
    const-string/jumbo v4, "location"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_30

    move-object/from16 v66, v67

    .line 1015
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    :goto_17
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1017
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1019
    :try_start_1c
    new-instance v32, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_13

    .line 1020
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v32, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1d
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_2f

    move-object/from16 v31, v32

    .line 1024
    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_18
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1027
    :cond_14
    if-nez v42, :cond_15

    if-eqz v46, :cond_4a

    .line 1037
    :cond_15
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1039
    if-nez v42, :cond_16

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1040
    const v5, 0x1120059

    .line 1039
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1040
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_4b

    .line 1046
    :cond_16
    :goto_1a
    const-string/jumbo v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1048
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1050
    if-nez v42, :cond_17

    .line 1051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1053
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1058
    :cond_17
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1062
    :try_start_1e
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v63

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1061
    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_15

    .line 1066
    :goto_1b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1068
    if-nez v42, :cond_1c

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1074
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1076
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1075
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1074
    if-eqz v4, :cond_1a

    .line 1078
    :cond_19
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1080
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1083
    :cond_1a
    if-nez v47, :cond_1b

    .line 1084
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1087
    :try_start_1f
    new-instance v87, Lcom/android/server/SerialService;

    move-object/from16 v0, v87

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_16

    .line 1088
    .end local v86    # "serial":Lcom/android/server/SerialService;
    .local v87, "serial":Lcom/android/server/SerialService;
    :try_start_20
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_2e

    move-object/from16 v86, v87

    .line 1092
    .end local v87    # "serial":Lcom/android/server/SerialService;
    :goto_1c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1096
    :cond_1b
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1095
    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1098
    :try_start_21
    new-instance v61, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_17

    .line 1099
    .end local v60    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v61, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_22
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_2d

    move-object/from16 v60, v61

    .line 1104
    .end local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1107
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1109
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1113
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1117
    if-nez v42, :cond_23

    .line 1118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1122
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1123
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1122
    if-eqz v4, :cond_20

    .line 1124
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_4c

    .line 1128
    :cond_20
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1132
    :cond_21
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1133
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1136
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1140
    :cond_23
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1142
    :try_start_23
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_18

    .line 1146
    :goto_1f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1148
    if-nez v45, :cond_24

    .line 1149
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1155
    :try_start_24
    const-string/jumbo v4, "samplingprofiler"

    .line 1156
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1155
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_19

    .line 1160
    :goto_20
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1163
    :cond_24
    if-nez v40, :cond_25

    if-eqz v41, :cond_4d

    .line 1174
    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_25
    :goto_21
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1176
    :try_start_25
    new-instance v24, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1b

    .line 1177
    .end local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v24, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_26
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_2b

    move-object/from16 v23, v24

    .line 1181
    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_22
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1183
    if-nez v40, :cond_26

    .line 1184
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1186
    :try_start_27
    new-instance v22, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1c

    .line 1190
    :goto_23
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1193
    :cond_26
    if-nez v40, :cond_27

    if-eqz v42, :cond_4e

    .line 1198
    :cond_27
    :goto_24
    if-nez v42, :cond_28

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1203
    :cond_28
    if-nez v42, :cond_29

    .line 1214
    :cond_29
    if-nez v42, :cond_2a

    .line 1215
    const-string/jumbo v4, "graphicsstats"

    .line 1216
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1215
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1219
    :cond_2a
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1220
    const v5, 0x11200a4

    .line 1219
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1222
    :try_start_28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance v59, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-direct {v0, v6, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1d

    .line 1224
    .end local v58    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v59, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_29
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v59

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_2a

    move-object/from16 v58, v59

    .line 1230
    .end local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_2b
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1234
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1242
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1246
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1250
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1254
    :cond_30
    if-nez v42, :cond_33

    .line 1255
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1257
    :try_start_2a
    new-instance v71, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v71

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1e

    .line 1258
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_2b
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_29

    move-object/from16 v70, v71

    .line 1262
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_26
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1264
    if-nez v51, :cond_31

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1268
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1272
    :cond_32
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1274
    :try_start_2c
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1f

    .line 1278
    :goto_27
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1281
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1286
    .end local v84    # "notification":Landroid/app/INotificationManager;
    :cond_34
    if-nez v42, :cond_35

    if-eqz v39, :cond_4f

    .line 1290
    :cond_35
    :goto_28
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1294
    const-string/jumbo v4, "config.enable_cellmediator"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.cellular.WearCellularMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1297
    :cond_36
    if-nez v42, :cond_37

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1303
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1304
    const-string/jumbo v107, "service.adb.tcp.port"

    const-string/jumbo v108, "-1"

    invoke-static/range {v107 .. v108}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v107

    .line 1303
    move/from16 v0, v107

    invoke-static {v4, v5, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1308
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1309
    new-instance v107, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, v107

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/16 v108, 0x0

    .line 1307
    move/from16 v0, v108

    move-object/from16 v1, v107

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1313
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v85

    .line 1314
    .local v85, "safeMode":Z
    if-eqz v85, :cond_50

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1317
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1324
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .line 1328
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_2d
    invoke-static/range {v57 .. v57}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v88

    .line 1329
    .local v88, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v88

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v28

    .line 1330
    .local v28, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1331
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1332
    .local v21, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "run"

    const/16 v107, 0x0

    move/from16 v0, v107

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v107, v0

    move-object/from16 v0, v107

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v72

    .line 1333
    .local v72, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1334
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v72

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_2d} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_2d} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_2d} :catch_20
    .catch Ljava/lang/InstantiationException; {:try_start_2d .. :try_end_2d} :catch_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_2d} :catch_20

    .line 1344
    .end local v21    # "baseObject":Ljava/lang/Object;
    .end local v28    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v72    # "method":Ljava/lang/reflect/Method;
    .end local v88    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "device_provisioned"

    const/16 v107, 0x0

    move/from16 v0, v107

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_38

    .line 1345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1344
    if-eqz v4, :cond_39

    .line 1346
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1351
    :cond_39
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1353
    :try_start_2e
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_21

    .line 1357
    :goto_2b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1359
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1360
    if-eqz v68, :cond_3a

    .line 1362
    :try_start_2f
    invoke-interface/range {v68 .. v68}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_22

    .line 1367
    :cond_3a
    :goto_2c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1374
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1378
    if-eqz v56, :cond_3b

    .line 1380
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-virtual/range {v104 .. v104}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v103

    .line 1382
    .restart local v103    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v107, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v108, 0x0

    aput-object v107, v5, v108

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v69

    .line 1383
    .local v69, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1384
    const/16 v107, 0x1f4

    .line 1383
    move/from16 v0, v107

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v69

    move-object/from16 v1, v104

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    invoke-virtual/range {v105 .. v105}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v101

    .line 1387
    .restart local v101    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v107, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v108, 0x0

    aput-object v107, v5, v108

    move-object/from16 v0, v101

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v69

    .line 1388
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1389
    const/16 v107, 0x1f4

    .line 1388
    move/from16 v0, v107

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v107, 0x0

    aput-object v5, v4, v107

    move-object/from16 v0, v69

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_23

    .line 1396
    .end local v69    # "m":Ljava/lang/reflect/Method;
    .end local v101    # "wigigClass":Ljava/lang/Class;
    .end local v103    # "wigigP2pClass":Ljava/lang/Class;
    :cond_3b
    :goto_2d
    :try_start_31
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_24

    .line 1400
    :goto_2e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1402
    if-eqz v85, :cond_3c

    .line 1403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1407
    :cond_3c
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->detectDisableOverlays()Z

    move-result v43

    .line 1408
    .local v43, "disableOverlays":Z
    if-eqz v43, :cond_3d

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->disableOverlays()V

    .line 1415
    :cond_3d
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    .line 1416
    .local v25, "config":Landroid/content/res/Configuration;
    new-instance v73, Landroid/util/DisplayMetrics;

    invoke-direct/range {v73 .. v73}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1417
    .local v73, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/view/WindowManager;

    .line 1418
    .local v99, "w":Landroid/view/WindowManager;
    invoke-interface/range {v99 .. v99}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1419
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, v73

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1422
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v92

    .line 1423
    .local v92, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v92 .. v92}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 1424
    invoke-virtual/range {v92 .. v92}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1427
    :cond_3e
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1430
    :try_start_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1431
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_25

    .line 1435
    :goto_2f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1437
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1439
    :try_start_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_26

    .line 1443
    :goto_30
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1445
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1448
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v85

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_27

    .line 1452
    :goto_31
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1454
    if-eqz v58, :cond_3f

    .line 1456
    :try_start_35
    invoke-virtual/range {v58 .. v58}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_28

    .line 1463
    :cond_3f
    :goto_32
    move-object/from16 v8, v76

    .line 1464
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v81

    .line 1465
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v77

    .line 1466
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v26

    .line 1467
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v79

    .line 1468
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v66

    .line 1469
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v31

    .line 1470
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v82

    .line 1471
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v23

    .line 752
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    const/16 v16, 0x0

    .line 1473
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v63

    .line 1474
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v93

    .line 1475
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v70

    .line 1476
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v74, v20

    .line 1483
    .local v74, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v107, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v0, v107

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 570
    return-void

    .line 695
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v43    # "disableOverlays":Z
    .end local v73    # "metrics":Landroid/util/DisplayMetrics;
    .end local v74    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v85    # "safeMode":Z
    .end local v92    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v99    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v60    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "mountService":Landroid/os/storage/IMountService;
    .local v76, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v81, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86    # "serial":Lcom/android/server/SerialService;
    .local v89, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v104    # "wigigP2pService":Ljava/lang/Object;
    .restart local v105    # "wigigService":Ljava/lang/Object;
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_40
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 696
    :cond_41
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 720
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_42
    :try_start_36
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_43

    .line 721
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_0

    goto/16 :goto_2

    .line 742
    .end local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v54

    .local v54, "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v95    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v93, v94

    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v64

    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v97, v98

    .line 743
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "themeService":Lcom/android/server/ThemeService;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    :goto_33
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 722
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_43
    :try_start_37
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 723
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 722
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 724
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 725
    :cond_44
    if-eqz v35, :cond_45

    .line 726
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 728
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_0

    goto/16 :goto_2

    .line 764
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "themeService":Lcom/android/server/ThemeService;
    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    .end local v106    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v68    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v84, "notification":Landroid/app/INotificationManager;
    .restart local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v55

    .line 765
    .local v55, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 772
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v55

    .line 773
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 784
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_46
    :try_start_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 786
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 785
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_3

    move-result-object v75

    .local v75, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    .line 787
    .local v75, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v55

    .line 788
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 801
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v75    # "mountService":Landroid/os/storage/IMountService;
    :catch_4
    move-exception v55

    .line 802
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 810
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v55

    .line 811
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 822
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v55

    .line 823
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 843
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v68    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v55

    .line 844
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 854
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v55

    .line 855
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 865
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v76    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v55

    .line 866
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 872
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_d

    .line 880
    :catch_a
    move-exception v55

    .line 881
    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 889
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v81    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v55

    .line 890
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 899
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v55

    .line 900
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 907
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_48
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 938
    .end local v104    # "wigigP2pService":Ljava/lang/Object;
    .end local v105    # "wigigService":Ljava/lang/Object;
    :catch_d
    move-exception v55

    .line 939
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 955
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v55

    .line 956
    .end local v26    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 965
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v89    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f
    move-exception v55

    .line 966
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 976
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v55

    .line 977
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 992
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_49
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v108, 0x80000

    move-wide/from16 v0, v108

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 994
    :try_start_39
    invoke-interface/range {v75 .. v75}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_11

    .line 997
    :goto_38
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_16

    .line 995
    :catch_11
    move-exception v62

    .local v62, "ignored":Landroid/os/RemoteException;
    goto :goto_38

    .line 1012
    .end local v62    # "ignored":Landroid/os/RemoteException;
    .local v84, "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v55

    .line 1013
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1021
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v55

    .line 1022
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1028
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4a
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1030
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_14

    .line 1034
    :goto_3b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_19

    .line 1031
    :catch_14
    move-exception v55

    .line 1032
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 1041
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4b
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1043
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1a

    .line 1063
    :catch_15
    move-exception v55

    .line 1064
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1089
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v55

    .line 1090
    .end local v86    # "serial":Lcom/android/server/SerialService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 1101
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v55

    .line 1102
    .end local v60    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1125
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_1e

    .line 1143
    :catch_18
    move-exception v55

    .line 1144
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1157
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v55

    .line 1158
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1164
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4d
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1166
    :try_start_3b
    new-instance v83, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v83

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1a

    .line 1167
    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v83, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_3c
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2c

    move-object/from16 v82, v83

    .line 1171
    .end local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_21

    .line 1168
    .restart local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_1a
    move-exception v55

    .line 1169
    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 1178
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v55

    .line 1179
    .end local v23    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1187
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v55

    .line 1188
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1195
    .end local v55    # "e":Ljava/lang/Throwable;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_24

    .line 1225
    :catch_1d
    move-exception v55

    .line 1226
    .end local v58    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v55

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1259
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v55

    .line 1260
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v55    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1275
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v55

    .line 1276
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1287
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v84    # "notification":Landroid/app/INotificationManager;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_28

    .line 1320
    .restart local v85    # "safeMode":Z
    :cond_50
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_29

    .line 1339
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_20
    move-exception v53

    .line 1340
    .local v53, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v107, "Unable to start  "

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const-string/jumbo v4, "SystemServer"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 1354
    .end local v53    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_21
    move-exception v55

    .line 1355
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1363
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v55

    .line 1364
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1390
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v55

    .line 1391
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1397
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v55

    .line 1398
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1432
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v25    # "config":Landroid/content/res/Configuration;
    .restart local v43    # "disableOverlays":Z
    .restart local v73    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v92    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v99    # "w":Landroid/view/WindowManager;
    :catch_25
    move-exception v55

    .line 1433
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1440
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v55

    .line 1441
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1449
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v55

    .line 1450
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1457
    .end local v55    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v55

    .line 1458
    .restart local v55    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1259
    .end local v25    # "config":Landroid/content/res/Configuration;
    .end local v43    # "disableOverlays":Z
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v73    # "metrics":Landroid/util/DisplayMetrics;
    .end local v85    # "safeMode":Z
    .end local v92    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v99    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v84    # "notification":Landroid/app/INotificationManager;
    :catch_29
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v70, v71

    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_42

    .line 1225
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2a
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v58, v59

    .end local v59    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v58, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_41

    .line 1178
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v58, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_2b
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v23, v24

    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_40

    .line 1168
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v23, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2c
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v82, v83

    .end local v83    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v82, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_3f

    .line 1101
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v82, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2d
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v60, v61

    .end local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v60, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_3d

    .line 1089
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v60, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v87    # "serial":Lcom/android/server/SerialService;
    :catch_2e
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v86, v87

    .end local v87    # "serial":Lcom/android/server/SerialService;
    .local v86, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_3c

    .line 1021
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v86, "serial":Lcom/android/server/SerialService;
    :catch_2f
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3a

    .line 1012
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "location":Lcom/android/server/LocationManagerService;
    :catch_30
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v66, v67

    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .local v66, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_39

    .line 955
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v66, "location":Lcom/android/server/LocationManagerService;
    .local v84, "notification":Landroid/app/INotificationManager;
    .restart local v89    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_31
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_37

    .line 899
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v26, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v78    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104    # "wigigP2pService":Ljava/lang/Object;
    .restart local v105    # "wigigService":Ljava/lang/Object;
    :catch_32
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v77, v78

    .end local v78    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v77, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_36

    .line 880
    .end local v55    # "e":Ljava/lang/Throwable;
    .local v77, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v81    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_33
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v79, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_35

    .line 843
    .end local v55    # "e":Ljava/lang/Throwable;
    .restart local v76    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v79, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_34
    move-exception v55

    .restart local v55    # "e":Ljava/lang/Throwable;
    move-object/from16 v90, v91

    .end local v91    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v90, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_34

    .line 742
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v55    # "e":Ljava/lang/Throwable;
    .end local v58    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v84    # "notification":Landroid/app/INotificationManager;
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v63, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "mountService":Landroid/os/storage/IMountService;
    .local v93, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "themeService":Lcom/android/server/ThemeService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_35
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_33

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_36
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v93, v94

    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v93, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_33

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "themeService":Lcom/android/server/ThemeService;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "themeService":Lcom/android/server/ThemeService;
    :catch_37
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "themeService":Lcom/android/server/ThemeService;
    .local v95, "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v93, v94

    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_33

    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "themeService":Lcom/android/server/ThemeService;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_38
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v95    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v93, v94

    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_33

    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "themeService":Lcom/android/server/ThemeService;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v98    # "vibrator":Lcom/android/server/VibratorService;
    :catch_39
    move-exception v54

    .restart local v54    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v95, v96

    .end local v96    # "themeService":Lcom/android/server/ThemeService;
    .restart local v95    # "themeService":Lcom/android/server/ThemeService;
    move-object/from16 v29, v30

    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v93, v94

    .end local v94    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v97, v98

    .end local v98    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_33
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1620
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1621
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1620
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1622
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1624
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1618
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1628
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1629
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    return-void
.end method
