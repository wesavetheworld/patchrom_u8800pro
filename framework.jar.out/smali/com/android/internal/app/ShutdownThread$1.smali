.class final Lcom/android/internal/app/ShutdownThread$1;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, "persist.sys.quickpoweron"

    const-string v7, "ShutdownThread"

    .line 221
    const-string v5, "ShutdownThread"

    const-string v5, "begin shutdownThread"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v5, "persist.sys.quickpoweron"

    const-string/jumbo v5, "startshutdown"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V

    .line 226
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->savePhoneSate(Landroid/content/Context;)V

    .line 227
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->setPoweroffState(Landroid/content/Context;)V

    .line 228
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->killRunningProcess(Landroid/content/Context;)V

    .line 231
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    .line 233
    .local v4, vibrator:Landroid/os/Vibrator;
    const-wide/16 v5, 0x1f4

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 244
    :goto_1
    const-string v5, "persist.sys.quickpoweron"

    const-string/jumbo v5, "shutdown"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v8}, Landroid/os/Power;->notifyArmNineSleep(Z)Z

    move-result v0

    .line 247
    .local v0, bResult:Z
    const-string v5, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modem to sleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_2
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 252
    .local v3, mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    .end local v3           #mPowerManagerService:Landroid/os/IPowerManager;
    :goto_2
    const-wide/16 v5, 0x1f4

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 263
    :goto_3
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 264
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 265
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 266
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/internal/app/ShutdownThread;->access$102(Ljava/lang/Process;)Ljava/lang/Process;

    .line 273
    :cond_0
    :goto_4
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$300()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 274
    const/4 v6, 0x0

    :try_start_4
    invoke-static {v6}, Lcom/android/internal/app/ShutdownThread;->access$402(Z)Z

    .line 275
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    return-void

    .line 234
    .end local v0           #bResult:Z
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to vibrate during shutdown."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bResult:Z
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 254
    .local v2, ex:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v5, "go to sleep error "

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "ShutdownThread"

    const-string/jumbo v5, "shutdown animation thread sleep 0.5s failed"

    invoke-static {v7, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 269
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 270
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_4

    .line 275
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 241
    .end local v0           #bResult:Z
    :catch_3
    move-exception v5

    goto/16 :goto_1
.end method
