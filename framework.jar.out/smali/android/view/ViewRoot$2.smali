.class Landroid/view/ViewRoot$2;
.super Ljava/lang/Object;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRoot;


# direct methods
.method constructor <init>(Landroid/view/ViewRoot;)V
    .locals 0
    .parameter

    .prologue
    .line 3461
    iput-object p1, p0, Landroid/view/ViewRoot$2;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 3475
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 3467
    iget-object v0, p0, Landroid/view/ViewRoot$2;->this$0:Landroid/view/ViewRoot;

    #getter for: Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/view/ViewRoot;->access$300(Landroid/view/ViewRoot;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3506
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 3471
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 3496
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 3500
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 3478
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3481
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 3487
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 3493
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    .prologue
    .line 3484
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3490
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 3504
    return-void
.end method
