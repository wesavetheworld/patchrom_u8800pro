.class public final enum Lcom/android/internal/telephony/UiccConstants$PinState;
.super Ljava/lang/Enum;
.source "UiccConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/UiccConstants$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/UiccConstants$PinState;

.field public static final enum PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public static final enum PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public static final enum PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public static final enum PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public static final enum PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

.field public static final enum PINSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    const-string v1, "PINSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/UiccConstants$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    const-string v1, "PINSTATE_ENABLED_NOT_VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/UiccConstants$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    const-string v1, "PINSTATE_ENABLED_VERIFIED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/UiccConstants$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    const-string v1, "PINSTATE_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/UiccConstants$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    const-string v1, "PINSTATE_ENABLED_BLOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/UiccConstants$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    const-string v1, "PINSTATE_ENABLED_PERM_BLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccConstants$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PinState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$PinState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    const-class v0, Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/UiccConstants$PinState;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$PinState;->$VALUES:[Lcom/android/internal/telephony/UiccConstants$PinState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccConstants$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method
