.class public Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "RF1A.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucRoamingStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "RF1A"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "roamingStatus"

    .prologue
    .line 18
    sget v0, Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 19
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;->ucRoamingStatus:B

    .line 20
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/rf/RF1A;->ucRoamingStatus:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
