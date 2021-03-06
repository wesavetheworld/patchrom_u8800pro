.class final Lcom/android/server/WindowManagerService$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mAnimLayer:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAppFreezing:Z

.field mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mClient:Landroid/view/IWindow;

.field mCommitDrawPending:Z

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

.field mDestroying:Z

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawPending:Z

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mExiting:Z

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mHScale:F

.field mHasDrawn:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveFrame:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field final mLastContentInsets:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastHScale:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastShownFrame:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutSeq:I

.field mLocalAnimating:Z

.field mObscured:Z

.field mOrientationChanging:Z

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mReadyToShow:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mReportDestroySurface:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

.field final mSession:Lcom/android/server/WindowManagerService$Session;

.field mShownAlpha:F

.field final mShownFrame:Landroid/graphics/Rect;

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field mSurface:Landroid/view/Surface;

.field mSurfaceAlpha:F

.field mSurfaceH:I

.field mSurfaceLayer:I

.field mSurfacePendingDestroy:Z

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:I

.field mSurfaceX:I

.field mSurfaceY:I

.field mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/WindowManagerService$WindowToken;

.field mTouchableInsets:I

.field final mTransformation:Landroid/view/animation/Transformation;

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasPaused:Z

.field mXOffset:I

.field mYOffset:I

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 7
    .parameter
    .parameter "s"
    .parameter "c"
    .parameter "token"
    .parameter "attachedWindow"
    .parameter "a"
    .parameter "viewVisibility"

    .prologue
    .line 6244
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6056
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6059
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    .line 6067
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 6068
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 6087
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 6089
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 6092
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    .line 6093
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    .line 6104
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 6105
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 6111
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 6112
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 6125
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 6131
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 6139
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 6142
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    .line 6143
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 6144
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 6145
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 6146
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6149
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    .line 6150
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 6152
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 6153
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 6154
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 6155
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 6157
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 6158
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 6159
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 6172
    new-instance v5, Landroid/view/animation/Transformation;

    invoke-direct {v5}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    .line 6176
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 6177
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 6181
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 6182
    const/high16 v5, -0x4080

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 6245
    iput-object p2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .line 6246
    iput-object p3, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    .line 6247
    iput-object p4, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 6248
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, p6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 6249
    iput p7, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 6250
    new-instance v2, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;-><init>(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$1;)V

    .line 6251
    .local v2, deathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;
    iget v5, p6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 6256
    :try_start_0
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6268
    iput-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    .line 6270
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v5, v6, :cond_6

    .line 6274
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    .line 6277
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    .line 6278
    iput-object p5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6279
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6280
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    .line 6282
    iget-object v5, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v5, v6, :cond_0

    iget-object v5, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_3

    :cond_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    .line 6284
    iget-object v5, p5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    .line 6285
    iget-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_5

    :cond_1
    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsFloatingLayer:Z

    .line 6301
    :goto_4
    move-object v1, p0

    .line 6302
    .local v1, appWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_5
    iget-object v5, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v5, :cond_c

    .line 6303
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_5

    .line 6257
    .end local v1           #appWin:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 6258
    .local v3, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    .line 6259
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6260
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    .line 6261
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    .line 6262
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    .line 6263
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsFloatingLayer:Z

    .line 6264
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    .line 6265
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    .line 6326
    .end local v3           #e:Landroid/os/RemoteException;
    :goto_6
    return-void

    .line 6280
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 6282
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 6284
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 6285
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 6289
    :cond_6
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v6, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    .line 6292
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    .line 6293
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 6294
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    .line 6295
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_9

    :cond_7
    const/4 v5, 0x1

    :goto_7
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    .line 6297
    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_8
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    .line 6298
    iget-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_b

    :cond_8
    const/4 v5, 0x1

    :goto_9
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsFloatingLayer:Z

    goto :goto_4

    .line 6295
    :cond_9
    const/4 v5, 0x0

    goto :goto_7

    .line 6297
    :cond_a
    const/4 v5, 0x0

    goto :goto_8

    .line 6298
    :cond_b
    const/4 v5, 0x0

    goto :goto_9

    .line 6305
    .restart local v1       #appWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    iget-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 6306
    .local v0, appToken:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_a
    iget-object v5, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v5, :cond_d

    .line 6307
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 6308
    .local v4, parent:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v4, :cond_d

    if-ne v0, v4, :cond_e

    .line 6313
    .end local v4           #parent:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_d
    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 6314
    iget-object v5, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 6316
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 6317
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 6318
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 6319
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 6320
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 6321
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    .line 6322
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    .line 6323
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 6324
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 6325
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    goto/16 :goto_6

    .line 6311
    .restart local v4       #parent:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_e
    move-object v0, v4

    .line 6312
    goto :goto_a
.end method


# virtual methods
.method attach()V
    .locals 1

    .prologue
    .line 6332
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$Session;->windowAddedLocked()V

    .line 6333
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 1

    .prologue
    .line 7275
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 6491
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 6492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6496
    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked(J)Z
    .locals 6
    .parameter "currentTime"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6684
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v2, :cond_0

    move v2, v4

    .line 6694
    :goto_0
    return v2

    .line 6687
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6688
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6689
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v5

    .line 6690
    .local v1, starting:Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 6691
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 6692
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    :cond_2
    move v2, v5

    .line 6694
    goto :goto_0

    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v1           #starting:Z
    :cond_3
    move v1, v4

    .line 6689
    goto :goto_1
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 21
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 6336
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    .line 6338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object v8, v0

    .line 6339
    .local v8, container:Landroid/graphics/Rect;
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object v14, v0

    .line 6342
    .local v14, display:Landroid/graphics/Rect;
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 6345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 6347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 6351
    :cond_0
    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int v18, v5, v6

    .line 6352
    .local v18, pw:I
    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int v17, v5, v6

    .line 6355
    .local v17, ph:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_d

    .line 6356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v5, :cond_b

    move/from16 v6, v18

    .line 6357
    .local v6, w:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v5, :cond_c

    move/from16 v7, v17

    .line 6363
    .local v7, h:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object v12, v0

    .line 6364
    .local v12, content:Landroid/graphics/Rect;
    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 6367
    .local v19, visible:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v11, v0

    .line 6370
    .local v11, frame:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 6371
    .local v16, fw:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 6376
    .local v15, fh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v9, v0

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v10, v0

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v18

    int-to-float v0, v0

    move v13, v0

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v10, v0

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v17

    int-to-float v0, v0

    move v14, v0

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    float-to-int v10, v10

    invoke-static/range {v5 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 6383
    .end local v14           #display:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move v0, v5

    move-object/from16 v1, p2

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6387
    iget v5, v12, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    .end local v6           #w:I
    if-ge v5, v6, :cond_1

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iput v5, v12, Landroid/graphics/Rect;->left:I

    .line 6388
    :cond_1
    iget v5, v12, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_2

    iget v5, v11, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->top:I

    .line 6389
    :cond_2
    iget v5, v12, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_3

    iget v5, v11, Landroid/graphics/Rect;->right:I

    iput v5, v12, Landroid/graphics/Rect;->right:I

    .line 6390
    :cond_3
    iget v5, v12, Landroid/graphics/Rect;->bottom:I

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_4

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 6391
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget v6, v11, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_5

    iget v5, v11, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6392
    :cond_5
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget v6, v11, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_6

    iget v5, v11, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6393
    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget v6, v11, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_7

    iget v5, v11, Landroid/graphics/Rect;->right:I

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6394
    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_8

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6396
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v13, v0

    .line 6397
    .local v13, contentInsets:Landroid/graphics/Rect;
    iget v5, v12, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->left:I

    .line 6398
    iget v5, v12, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->top:I

    .line 6399
    iget v5, v11, Landroid/graphics/Rect;->right:I

    iget v6, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->right:I

    .line 6400
    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 6402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 6403
    .local v20, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 6404
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 6405
    iget v5, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 6406
    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    move v5, v0

    if-eqz v5, :cond_a

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_9

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v15, v5, :cond_a

    .line 6409
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    move-object v7, v0

    .end local v7           #h:I
    iget-object v7, v7, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 6424
    .end local v8           #container:Landroid/graphics/Rect;
    :cond_a
    return-void

    .line 6356
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #content:Landroid/graphics/Rect;
    .end local v13           #contentInsets:Landroid/graphics/Rect;
    .end local v15           #fh:I
    .end local v16           #fw:I
    .end local v19           #visible:Landroid/graphics/Rect;
    .end local v20           #visibleInsets:Landroid/graphics/Rect;
    .restart local v8       #container:Landroid/graphics/Rect;
    .restart local v14       #display:Landroid/graphics/Rect;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v5

    goto/16 :goto_0

    .line 6357
    .restart local v6       #w:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    move v7, v5

    goto/16 :goto_1

    .line 6359
    .end local v6           #w:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    move/from16 v6, v18

    .line 6360
    .restart local v6       #w:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_f

    move/from16 v7, v17

    .restart local v7       #h:I
    :goto_3
    goto/16 :goto_1

    .line 6359
    .end local v6           #w:I
    .end local v7           #h:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v5, v0

    move v6, v5

    goto :goto_2

    .line 6360
    .restart local v6       #w:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v5, v0

    move v7, v5

    goto :goto_3
.end method

.method computeShownFrameLocked()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/high16 v14, 0x3f80

    const/4 v13, 0x0

    .line 6951
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6952
    .local v4, selfTransformation:Z
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    move-object v1, v10

    .line 6955
    .local v1, attachedTransformation:Landroid/view/animation/Transformation;
    :goto_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    move-object v0, v10

    .line 6961
    .local v0, appTransformation:Landroid/view/animation/Transformation;
    :goto_1
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7dd

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v10, :cond_1

    .line 6963
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v10

    if-nez v10, :cond_0

    .line 6966
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    .line 6971
    :cond_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->hasTransformation:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v10

    if-nez v10, :cond_1

    .line 6975
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v10, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->transformation:Landroid/view/animation/Transformation;

    .line 6982
    :cond_1
    if-nez v4, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_c

    .line 6985
    :cond_2
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    .line 6986
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v5, v10, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 6987
    .local v5, tmpFloats:[F
    iget-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 6990
    .local v6, tmpMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v6, v13, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6991
    if-eqz v4, :cond_3

    .line 6992
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 6994
    :cond_3
    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6995
    if-eqz v1, :cond_4

    .line 6996
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 6998
    :cond_4
    if-eqz v0, :cond_5

    .line 6999
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 7008
    :cond_5
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 7009
    const/4 v10, 0x0

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    .line 7010
    const/4 v10, 0x1

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    .line 7011
    const/4 v10, 0x3

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    .line 7012
    const/4 v10, 0x4

    aget v10, v5, v10

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    .line 7013
    const/4 v10, 0x2

    aget v10, v5, v10

    float-to-int v10, v10

    iget v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    add-int v8, v10, v11

    .line 7014
    .local v8, x:I
    const/4 v10, 0x5

    aget v10, v5, v10

    float-to-int v10, v10

    iget v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    add-int v9, v10, v11

    .line 7015
    .local v9, y:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 7016
    .local v7, w:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 7017
    .local v3, h:I
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    add-int v11, v8, v7

    add-int v12, v9, v3

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 7024
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 7025
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v10}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    iget v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    iget v12, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    iget v13, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/server/WindowManagerService$WindowState;->isIdentityMatrix(FFFF)Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, v2, Landroid/graphics/Rect;->left:I

    if-ne v8, v10, :cond_9

    iget v10, v2, Landroid/graphics/Rect;->top:I

    if-ne v9, v10, :cond_9

    .line 7030
    :cond_6
    if-eqz v4, :cond_7

    .line 7031
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    iget-object v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v11

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 7033
    :cond_7
    if-eqz v1, :cond_8

    .line 7034
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v11

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 7036
    :cond_8
    if-eqz v0, :cond_9

    .line 7037
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v11

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 7059
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v3           #h:I
    .end local v5           #tmpFloats:[F
    .end local v6           #tmpMatrix:Landroid/graphics/Matrix;
    .end local v7           #w:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_9
    :goto_2
    return-void

    .end local v0           #appTransformation:Landroid/view/animation/Transformation;
    .end local v1           #attachedTransformation:Landroid/view/animation/Transformation;
    :cond_a
    move-object v1, v11

    .line 6952
    goto/16 :goto_0

    .restart local v1       #attachedTransformation:Landroid/view/animation/Transformation;
    :cond_b
    move-object v0, v11

    .line 6955
    goto/16 :goto_1

    .line 7050
    .restart local v0       #appTransformation:Landroid/view/animation/Transformation;
    :cond_c
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7051
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    if-nez v10, :cond_d

    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    if-eqz v10, :cond_e

    .line 7052
    :cond_d
    iget-object v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    iget v12, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 7054
    :cond_e
    iget v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    iput v10, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    .line 7055
    iput v14, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    .line 7056
    iput v13, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    .line 7057
    iput v13, p0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    .line 7058
    iput v14, p0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    goto :goto_2
.end method

.method createSurfaceLocked()Landroid/view/Surface;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v10, "WindowManager"

    .line 6499
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_8

    .line 6500
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 6501
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    .line 6502
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 6503
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6504
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6505
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    .line 6506
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 6509
    :cond_0
    const/4 v8, 0x0

    .line 6510
    .local v8, flags:I
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 6511
    or-int/lit16 v8, v8, 0x200

    .line 6514
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-eqz v0, :cond_2

    .line 6516
    or-int/lit16 v8, v8, 0x400

    .line 6519
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    .line 6520
    or-int/lit16 v8, v8, 0x80

    .line 6529
    :cond_3
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 6530
    .local v5, w:I
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 6531
    .local v6, h:I
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    .line 6534
    iget v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 6535
    iget v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 6540
    :cond_4
    if-gtz v5, :cond_5

    const/4 v5, 0x1

    .line 6541
    :cond_5
    if-gtz v6, :cond_6

    const/4 v6, 0x1

    .line 6543
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 6544
    iput v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    .line 6545
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceAlpha:F

    .line 6546
    iput v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 6547
    iput v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 6548
    iput v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceW:I

    .line 6549
    iput v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceH:I

    .line 6551
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v2, v2, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6582
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 6585
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 6586
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 6587
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    iget v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 6588
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iput v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    .line 6589
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 6590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 6591
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 6592
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_7

    .line 6594
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setFlags(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6601
    :cond_7
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6604
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 6609
    .end local v5           #w:I
    .end local v6           #h:I
    .end local v8           #flags:I
    :cond_8
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    :goto_1
    return-object v0

    .line 6562
    .restart local v5       #w:I
    .restart local v6       #h:I
    .restart local v8       #flags:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 6563
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v0, "WindowManager"

    const-string v0, "OutOfResourcesException creating surface"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6564
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-string v1, "create"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    move-object v0, v11

    .line 6565
    goto :goto_1

    .line 6566
    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 6567
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v0, "Exception creating surface"

    invoke-static {v10, v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v11

    .line 6568
    goto :goto_1

    .line 6597
    .end local v9           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object v9, v0

    .line 6598
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6599
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-string v1, "create-init"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6603
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    .line 6604
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v0
.end method

.method destroySurfaceLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 6613
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne p0, v3, :cond_0

    .line 6614
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 6617
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 6618
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 6619
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6620
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6622
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6623
    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 6624
    add-int/lit8 v2, v2, -0x1

    .line 6625
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 6626
    .local v0, c:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    goto :goto_0

    .line 6629
    .end local v0           #c:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    if-eqz v3, :cond_3

    .line 6630
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 6631
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    .line 6633
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6668
    .end local v2           #i:I
    :cond_2
    :goto_1
    return-void

    .line 6636
    .restart local v2       #i:I
    :catch_0
    move-exception v3

    .line 6658
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6665
    :goto_2
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 6666
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    goto :goto_1

    .line 6659
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 6660
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method disposeInputChannel()V
    .locals 2

    .prologue
    .line 7248
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 7249
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/InputManager;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 7251
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 7252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 7254
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const/high16 v2, -0x4080

    const/high16 v1, 0x3f80

    const-string v3, " last="

    .line 7358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7359
    const-string v0, " mClient="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAttrs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7361
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_1

    .line 7362
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAttachedWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7363
    const-string v0, " mLayoutAttached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7365
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsFloatingLayer:Z

    if-eqz v0, :cond_3

    .line 7366
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsImWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7367
    const-string v0, " mIsWallpaper="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7368
    const-string v0, " mIsFloatingLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7369
    const-string v0, " mWallpaperVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7371
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7372
    const-string v0, " mSubLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7373
    const-string v0, " mAnimLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7374
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7376
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7377
    const-string v0, " mLastLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7378
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 7379
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7381
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7382
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 7383
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7384
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7385
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceW:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7386
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceH:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7388
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7389
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7390
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_5

    .line 7391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7393
    :cond_5
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_6

    .line 7394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTargetAppToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7396
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mViewVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7397
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7398
    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7399
    const-string v0, " mHaveFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7400
    const-string v0, " mObscured="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7401
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-eqz v0, :cond_8

    .line 7402
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyVisibility="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7403
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7404
    const-string v0, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7405
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7406
    const-string v0, " mAttachedHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7408
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_9

    .line 7409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRelayoutCalled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7411
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Requested w="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7412
    const-string v0, " h="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7413
    const-string v0, " mLayoutSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7414
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    if-eqz v0, :cond_b

    .line 7415
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Offsets x="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7416
    const-string v0, " y="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7418
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGivenContentInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7419
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7420
    const-string v0, " mGivenVisibleInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7421
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7422
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7423
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_d

    .line 7424
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTouchableInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7425
    const-string v0, " mGivenInsetsPending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7427
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7428
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7429
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7430
    const-string v0, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7431
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7432
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7433
    const-string v0, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7434
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7435
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainingFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7436
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7437
    const-string v0, " mDisplayFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7438
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7439
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7441
    const-string v0, " mVisibleFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7442
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7443
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7444
    const-string v0, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7445
    const-string v0, " mVisibleInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7446
    const-string v0, " last="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 7447
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7448
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    .line 7449
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 7450
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 7451
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 7453
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_11

    .line 7455
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7456
    const-string v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7457
    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7458
    const-string v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7460
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    if-eqz v0, :cond_13

    .line 7461
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7462
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7463
    const-string v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7464
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 7465
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7467
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawPending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7468
    const-string v0, " mCommitDrawPending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7469
    const-string v0, " mReadyToShow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7470
    const-string v0, " mHasDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7471
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-eqz v0, :cond_15

    .line 7472
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7473
    const-string v0, " mRemoveOnExit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7474
    const-string v0, " mDestroying="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7475
    const-string v0, " mRemoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7477
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    if-eqz v0, :cond_17

    .line 7478
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOrientationChanging="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7479
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7480
    const-string v0, " mAppFreezing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7481
    const-string v0, " mTurnOnScreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7483
    :cond_17
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    .line 7484
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 7485
    const-string v0, " mVScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 7487
    :cond_19
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1b

    .line 7488
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 7489
    const-string v0, " mWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 7491
    :cond_1b
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1d

    .line 7492
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperXStep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 7493
    const-string v0, " mWallpaperYStep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 7495
    :cond_1d
    return-void

    .line 7374
    :cond_1e
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    goto/16 :goto_0

    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method finishDrawingLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6671
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-eqz v0, :cond_0

    .line 6674
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 6675
    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v0, v2

    .line 6678
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method finishExit()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6907
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6908
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6909
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->finishExit()V

    .line 6908
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6912
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v3, :cond_2

    .line 6940
    :cond_1
    :goto_1
    return-void

    .line 6916
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isWindowAnimating()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6923
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_3

    .line 6924
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6925
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 6927
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 6929
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6933
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 6935
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 6936
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    if-eqz v3, :cond_1

    .line 6937
    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6938
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    goto :goto_1

    .line 6930
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 6931
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error hiding surface in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 6467
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 6459
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6439
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6435
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6427
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6451
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 6447
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6455
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 6471
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x12a05f200L

    goto :goto_0
.end method

.method public getShownFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6431
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 6463
    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    return v0
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6443
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 6477
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 1

    .prologue
    .line 7281
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    return v0
.end method

.method public hideLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 7317
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 5
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7321
    if-eqz p1, :cond_1

    .line 7322
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7323
    :cond_0
    const/4 p1, 0x0

    .line 7326
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    move v0, v1

    .line 7328
    .local v0, current:Z
    :goto_0
    if-nez v0, :cond_3

    move v1, v3

    .line 7354
    :goto_1
    return v1

    .line 7326
    .end local v0           #current:Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    move v0, v1

    goto :goto_0

    .line 7331
    .restart local v0       #current:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 7332
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const/16 v2, 0x2002

    #calls: Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    invoke-static {v1, p0, v2, v3}, Lcom/android/server/WindowManagerService;->access$800(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 7333
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_4

    .line 7334
    const/4 p1, 0x0

    .line 7337
    :cond_4
    if-eqz p1, :cond_7

    .line 7338
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 7351
    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    .line 7352
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    :cond_6
    move v1, v4

    .line 7354
    goto :goto_1

    .line 7341
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 7342
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 7346
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 7347
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v1, p0, :cond_5

    .line 7348
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean v4, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    goto :goto_2
.end method

.method isAnimating()Z
    .locals 3

    .prologue
    .line 7160
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 7161
    .local v1, attached:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7162
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 7179
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7180
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 7194
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7195
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFullscreen(II)Z
    .locals 1
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 7227
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .parameter "dsdx"
    .parameter "dtdx"
    .parameter "dsdy"
    .parameter "dtdy"

    .prologue
    const v5, 0x3f800054

    const v4, 0x3f7fff58

    const v3, 0x358637bd

    const v2, -0x4a79c843

    const/4 v1, 0x0

    .line 6943
    cmpg-float v0, p1, v4

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v5

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 6947
    :goto_0
    return v0

    .line 6944
    :cond_1
    cmpg-float v0, p4, v4

    if-ltz v0, :cond_2

    cmpl-float v0, p4, v5

    if-lez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 6945
    :cond_3
    cmpg-float v0, p2, v2

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v3

    if-lez v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    .line 6946
    :cond_5
    cmpg-float v0, p3, v2

    if-ltz v0, :cond_6

    cmpl-float v0, p3, v3

    if-lez v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    .line 6947
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnScreen()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7129
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7130
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_3

    .line 7131
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    .line 7135
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 7131
    goto :goto_0

    .line 7135
    :cond_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 7204
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7145
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v2, v2, Lcom/android/server/WindowManagerService$WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget v2, v2, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 7152
    :goto_0
    return v2

    .line 7149
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7150
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3

    move v0, v5

    .line 7152
    .local v0, animating:Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v2, v2, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    move v2, v5

    goto :goto_0

    .end local v0           #animating:Z
    :cond_3
    move v0, v4

    .line 7150
    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_1

    .restart local v0       #animating:Z
    :cond_5
    move v2, v4

    .line 7152
    goto :goto_0
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 7067
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7068
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 1

    .prologue
    .line 7106
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 7115
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7116
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 2

    .prologue
    .line 7082
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7083
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 7095
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7096
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isWindowAnimating()Z
    .locals 1

    .prologue
    .line 7171
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method needsBackgroundFiller(II)Z
    .locals 2
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 7212
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performShowLocked()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6709
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6722
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 6774
    :goto_0
    return v2

    .line 6725
    :cond_0
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 6726
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 6727
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 6728
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 6729
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 6731
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    #calls: Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    invoke-static {v2, p0}, Lcom/android/server/WindowManagerService;->access$700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 6733
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6734
    .local v1, i:I
    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 6735
    add-int/lit8 v1, v1, -0x1

    .line 6736
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 6737
    .local v0, c:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-eqz v2, :cond_1

    .line 6738
    iput-boolean v3, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    .line 6739
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 6740
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    .line 6746
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    goto :goto_1

    .line 6751
    .end local v0           #c:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v2, :cond_5

    .line 6753
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 6755
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v2, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v2, :cond_4

    .line 6763
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3

    .line 6764
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6766
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6768
    :cond_3
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6769
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6771
    :cond_4
    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .end local v1           #i:I
    :cond_5
    move v2, v4

    .line 6774
    goto :goto_0
.end method

.method removeLocked()V
    .locals 3

    .prologue
    .line 7232
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->disposeInputChannel()V

    .line 7234
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_0

    .line 7235
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7237
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 7238
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$Session;->windowRemovedLocked()V

    .line 7240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7245
    :goto_0
    return-void

    .line 7241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "anim"

    .prologue
    const/4 v0, 0x0

    .line 6483
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6484
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6485
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6486
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 6487
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget v1, v1, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 6488
    return-void
.end method

.method public showLw(Z)Z
    .locals 1
    .parameter "doAnimation"

    .prologue
    .line 7285
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 4
    .parameter "doAnimation"
    .parameter "requestAnim"

    .prologue
    const/4 v3, 0x1

    .line 7289
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_0

    .line 7290
    const/4 v0, 0x0

    .line 7313
    :goto_0
    return v0

    .line 7293
    :cond_0
    if-eqz p1, :cond_2

    .line 7296
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7297
    :cond_1
    const/4 p1, 0x0

    .line 7305
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 7306
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 7307
    if-eqz p1, :cond_3

    .line 7308
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const/16 v1, 0x1001

    #calls: Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    invoke-static {v0, p0, v1, v3}, Lcom/android/server/WindowManagerService;->access$800(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 7310
    :cond_3
    if-eqz p2, :cond_4

    .line 7311
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    :cond_4
    move v0, v3

    .line 7313
    goto :goto_0

    .line 7298
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 7302
    const/4 p1, 0x0

    goto :goto_1
.end method

.method stepAnimationLocked(JII)Z
    .locals 7
    .parameter "currentTime"
    .parameter "dw"
    .parameter "dh"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6780
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6783
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    .line 6784
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    .line 6785
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6786
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-nez v1, :cond_0

    .line 6791
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 6792
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 6793
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6794
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6796
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 6797
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 6802
    .local v0, more:Z
    if-eqz v0, :cond_1

    move v1, v4

    .line 6897
    .end local v0           #more:Z
    :goto_0
    return v1

    .line 6809
    .restart local v0       #more:Z
    :cond_1
    iput-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6812
    .end local v0           #more:Z
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6813
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4

    .line 6822
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6823
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    .line 6824
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    move v1, v5

    .line 6825
    goto :goto_0

    .line 6826
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    if-eqz v1, :cond_6

    .line 6829
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6841
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-nez v1, :cond_8

    move v1, v5

    .line 6842
    goto :goto_0

    .line 6830
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6831
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    goto :goto_1

    .line 6833
    :cond_7
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_5

    .line 6836
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6837
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6838
    iput-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 6850
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    .line 6851
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    .line 6852
    iput-object v6, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 6853
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 6854
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_e

    .line 6855
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget v2, v2, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 6861
    :cond_9
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasTransformation:Z

    .line 6862
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasLocalTransformation:Z

    .line 6863
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v1, v2, :cond_b

    .line 6868
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 6869
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    if-nez v1, :cond_b

    .line 6870
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v1, p0, :cond_a

    .line 6871
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean v4, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 6876
    :cond_a
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 6879
    :cond_b
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 6880
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v1, :cond_c

    .line 6887
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6888
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6891
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->finishExit()V

    .line 6893
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_d

    .line 6894
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_d
    move v1, v5

    .line 6897
    goto/16 :goto_0

    .line 6856
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_9

    .line 6857
    iget v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->this$0:Lcom/android/server/WindowManagerService;

    iget v2, v2, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7504
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWasPaused:Z

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eq v0, v1, :cond_1

    .line 7506
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 7507
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mWasPaused:Z

    .line 7508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mWasPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mStringNameCache:Ljava/lang/String;

    .line 7511
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService$WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v0
.end method
