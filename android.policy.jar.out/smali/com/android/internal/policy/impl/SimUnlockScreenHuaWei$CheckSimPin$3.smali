.class Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$3;
.super Ljava/lang/Object;
.source "SimUnlockScreenHuaWei.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreenHuaWei$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 532
    return-void
.end method
