.class public Landroid/app/ActivityManager$RunningServiceInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningServiceInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FOREGROUND:I = 0x2

.field public static final FLAG_PERSISTENT_PROCESS:I = 0x8

.field public static final FLAG_STARTED:I = 0x1

.field public static final FLAG_SYSTEM_PROCESS:I = 0x4


# instance fields
.field public activeSince:J

.field public clientCount:I

.field public clientLabel:I

.field public clientPackage:Ljava/lang/String;

.field public crashCount:I

.field public flags:I

.field public foreground:Z

.field public lastActivityTime:J

.field public pid:I

.field public process:Ljava/lang/String;

.field public restarting:J

.field public service:Landroid/content/ComponentName;

.field public started:Z

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 543
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 398
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 541
    return-void

    :cond_0
    move v0, v2

    .line 531
    goto :goto_0

    :cond_1
    move v0, v2

    .line 533
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 511
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 516
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 520
    iget-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    return-void

    :cond_0
    move v0, v2

    .line 514
    goto :goto_0

    :cond_1
    move v0, v2

    .line 516
    goto :goto_1
.end method
