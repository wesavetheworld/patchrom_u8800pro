.class Landroid/view/Window$LocalWindowManager;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalWindowManager"
.end annotation


# instance fields
.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/WindowManager;)V
    .locals 2
    .parameter
    .parameter "wm"

    .prologue
    .line 374
    iput-object p1, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Landroid/view/Window$LocalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 376
    #getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Window$LocalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDefaultDisplay(Landroid/view/Display;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window$LocalWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 378
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8
    .parameter "view"
    .parameter "params"

    .prologue
    const/16 v7, 0x3e8

    .line 382
    move-object v0, p2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    .line 383
    .local v4, wp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 384
    .local v1, curTitle:Ljava/lang/CharSequence;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v7, :cond_a

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_a

    .line 386
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_0

    .line 387
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 388
    .local v2, decor:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 392
    .end local v2           #decor:Landroid/view/View;
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 394
    :cond_1
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_5

    .line 395
    const-string v3, "Media"

    .line 407
    .local v3, title:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v6}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    .end local v3           #title:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 422
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/view/Window;->access$000(Landroid/view/Window;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 424
    :cond_4
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    return-void

    .line 396
    :cond_5
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ec

    if-ne v5, v6, :cond_6

    .line 397
    const-string v3, "MediaOvr"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 398
    .end local v3           #title:Ljava/lang/String;
    :cond_6
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_7

    .line 399
    const-string v3, "Panel"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v3           #title:Ljava/lang/String;
    :cond_7
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_8

    .line 401
    const-string v3, "SubPanel"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 402
    .end local v3           #title:Ljava/lang/String;
    :cond_8
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-ne v5, v6, :cond_9

    .line 403
    const-string v3, "AtchDlg"

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 405
    .end local v3           #title:Ljava/lang/String;
    :cond_9
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0

    .line 413
    .end local v3           #title:Ljava/lang/String;
    :cond_a
    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v5, :cond_b

    .line 414
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v5}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v5

    :goto_2
    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 416
    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_c
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 418
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Landroid/view/Window;->access$100(Landroid/view/Window;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 414
    :cond_d
    iget-object v5, p0, Landroid/view/Window$LocalWindowManager;->this$0:Landroid/view/Window;

    #getter for: Landroid/view/Window;->mContainer:Landroid/view/Window;
    invoke-static {v5}, Landroid/view/Window;->access$200(Landroid/view/Window;)Landroid/view/Window;

    move-result-object v5

    #getter for: Landroid/view/Window;->mAppToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/view/Window;->access$300(Landroid/view/Window;)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_2
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/view/Window$LocalWindowManager;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/view/Window$LocalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 433
    return-void
.end method

.method public final removeViewImmediate(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 436
    iget-object v0, p0, Landroid/view/Window$LocalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 428
    iget-object v0, p0, Landroid/view/Window$LocalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    return-void
.end method
