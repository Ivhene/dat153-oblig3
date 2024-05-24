.class final Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakAccessEntry"
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

.field previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 2
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

    .line 1270
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1275
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    .line 1288
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1301
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1271
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 1279
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

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

    .line 1292
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

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

    .line 1305
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1284
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    .line 1285
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

    .line 1297
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1298
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

    .line 1310
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1311
    return-void
.end method