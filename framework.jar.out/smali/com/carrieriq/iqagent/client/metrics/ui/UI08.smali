.class public Lcom/carrieriq/iqagent/client/metrics/ui/UI08;
.super Lcom/carrieriq/iqagent/client/Metric;
.source "UI08.java"


# static fields
.field public static final ID:I


# instance fields
.field public ucSignal:B

.field public ucTechnology:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "UI08"

    invoke-static {v0}, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->idFromString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 1
    .parameter "_ucSignal"
    .parameter "_ucTechnology"

    .prologue
    .line 19
    sget v0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ID:I

    invoke-direct {p0, v0}, Lcom/carrieriq/iqagent/client/Metric;-><init>(I)V

    .line 20
    iput-byte p1, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ucSignal:B

    .line 21
    iput-byte p2, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ucTechnology:B

    .line 22
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
    .line 25
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ucSignal:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    iget-byte v0, p0, Lcom/carrieriq/iqagent/client/metrics/ui/UI08;->ucTechnology:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method
