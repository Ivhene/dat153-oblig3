.class final Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakAccessWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 3
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1363
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1368
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1381
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1394
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1408
    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1421
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1434
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1364
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 1372
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1385
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1425
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1398
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1438
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1412
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1377
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1378
    return-void
.end method

.method public setNextInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1390
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1391
    return-void
.end method

.method public setNextInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1430
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1431
    return-void
.end method

.method public setPreviousInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1403
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1404
    return-void
.end method

.method public setPreviousInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1443
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1444
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1417
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1418
    return-void
.end method
