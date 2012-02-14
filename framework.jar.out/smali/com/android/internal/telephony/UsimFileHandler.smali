.class public final Lcom/android/internal/telephony/UsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "RIL_UsimFH"

    const-string v1, "UsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .parameter "efid"

    .prologue
    const-string v2, "3F007F105F3A"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 75
    const-string v1, "3F007F105F3A"

    move-object v1, v2

    .line 77
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 64
    :sswitch_0
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 68
    :sswitch_1
    const-string v1, "3F007F105F3A"

    move-object v1, v2

    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 77
    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_1
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 81
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 85
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
