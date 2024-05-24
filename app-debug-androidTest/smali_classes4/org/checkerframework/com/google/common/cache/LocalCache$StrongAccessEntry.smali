.class final Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<",
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
.method constructor <init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 983
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 988
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1001
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1014
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 984
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 992
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

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

    .line 1005
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

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

    .line 1018
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 997
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 998
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

    .line 1010
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1011
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

    .line 1023
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1024
    return-void
.end method
