.class final Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongWriteEntry"
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
.field nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
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

    .line 1029
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1034
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1047
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1060
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1030
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1051
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

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

    .line 1064
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1038
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    return-wide v0
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

    .line 1056
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1057
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

    .line 1069
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1070
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1043
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1044
    return-void
.end method
