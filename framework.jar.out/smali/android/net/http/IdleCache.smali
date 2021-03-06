.class Landroid/net/http/IdleCache;
.super Ljava/lang/Object;
.source "IdleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/IdleCache$1;,
        Landroid/net/http/IdleCache$IdleReaper;,
        Landroid/net/http/IdleCache$Entry;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:I = 0x7d0

.field private static final EMPTY_CHECK_MAX:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final IDLE_CACHE_MAX:I = 0x0

.field private static final TIMEOUT:I = 0x1770


# instance fields
.field private mCached:I

.field private mCount:I

.field private mEntries:[Landroid/net/http/IdleCache$Entry;

.field private mReused:I

.field private mShutdownOnPageFinish:Z

.field private mThread:Landroid/net/http/IdleCache$IdleReaper;

.field public pageFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "net.http.idle_cache.size"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v1, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    new-array v1, v1, [Landroid/net/http/IdleCache$Entry;

    iput-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    .line 55
    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 60
    iput v2, p0, Landroid/net/http/IdleCache;->mCached:I

    .line 61
    iput v2, p0, Landroid/net/http/IdleCache;->mReused:I

    .line 64
    invoke-virtual {p0, v2}, Landroid/net/http/IdleCache;->setShutdownFeature(Z)V

    .line 65
    iput-boolean v2, p0, Landroid/net/http/IdleCache;->pageFinished:Z

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    new-instance v2, Landroid/net/http/IdleCache$Entry;

    invoke-direct {v2, p0}, Landroid/net/http/IdleCache$Entry;-><init>(Landroid/net/http/IdleCache;)V

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/net/http/IdleCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/net/http/IdleCache;->mShutdownOnPageFinish:Z

    return v0
.end method

.method static synthetic access$200(Landroid/net/http/IdleCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/http/IdleCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/net/http/IdleCache;->clearIdle()V

    return-void
.end method

.method static synthetic access$402(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    return-object p1
.end method

.method private declared-synchronized clearIdle()V
    .locals 6

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_1

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 159
    .local v2, time:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_1

    sget v4, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v4, :cond_1

    .line 160
    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v4, v1

    .line 161
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_0

    iget-wide v4, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 162
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->getTcpPreConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 164
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    .line 165
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 166
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v1           #i:I
    .end local v2           #time:J
    :cond_1
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method declared-synchronized cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z
    .locals 7
    .parameter "host"
    .parameter "connection"

    .prologue
    .line 78
    monitor-enter p0

    const/4 v2, 0x0

    .line 84
    .local v2, ret:Z
    :try_start_0
    iget v5, p0, Landroid/net/http/IdleCache;->mCount:I

    sget v6, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v5, v6, :cond_0

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 86
    .local v3, time:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v5, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v5, :cond_0

    .line 87
    iget-object v5, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v5, v1

    .line 88
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v5, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-nez v5, :cond_1

    .line 89
    iput-object p1, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 90
    iput-object p2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 91
    const-wide/16 v5, 0x1770

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    .line 92
    iget v5, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 94
    const/4 v2, 0x1

    .line 95
    iget-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    if-nez v5, :cond_0

    .line 96
    new-instance v5, Landroid/net/http/IdleCache$IdleReaper;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V

    iput-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 97
    iget-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    invoke-virtual {v5}, Landroid/net/http/IdleCache$IdleReaper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v1           #i:I
    .end local v3           #time:J
    :cond_0
    monitor-exit p0

    return v2

    .line 86
    .restart local v0       #entry:Landroid/net/http/IdleCache$Entry;
    .restart local v1       #i:I
    .restart local v3       #time:J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v1           #i:I
    .end local v3           #time:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized clear()V
    .locals 4

    .prologue
    .line 134
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v2, :cond_1

    sget v2, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v2, :cond_1

    .line 135
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v2, v1

    .line 136
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 138
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->closeConnection()V

    .line 139
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 140
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized clearTcpConnections()V
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    sget v2, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v2, :cond_1

    .line 147
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v2, v1

    .line 148
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->getTcpPreConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/http/Connection;->setTcpPreConnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0           #entry:Landroid/net/http/IdleCache$Entry;
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .locals 6
    .parameter "host"

    .prologue
    .line 107
    monitor-enter p0

    const/4 v3, 0x0

    .line 109
    .local v3, ret:Landroid/net/http/Connection;
    :try_start_0
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_0

    .line 110
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v4, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v2, v4, :cond_0

    .line 111
    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v1, v4, v2

    .line 112
    .local v1, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v0, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 113
    .local v0, eHost:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v3, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 115
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 116
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 117
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0           #eHost:Lorg/apache/http/HttpHost;
    .end local v1           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v2           #i:I
    :cond_0
    monitor-exit p0

    return-object v3

    .line 110
    .restart local v0       #eHost:Lorg/apache/http/HttpHost;
    .restart local v1       #entry:Landroid/net/http/IdleCache$Entry;
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v0           #eHost:Lorg/apache/http/HttpHost;
    .end local v1           #entry:Landroid/net/http/IdleCache$Entry;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setShutdownFeature(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v0, "net.http.idle_cache.shutdown"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 130
    :cond_0
    iput-boolean p1, p0, Landroid/net/http/IdleCache;->mShutdownOnPageFinish:Z

    .line 131
    return-void
.end method

.method public declared-synchronized wakeup()V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
