.class abstract Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/cache/ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractReferenceEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 805
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 1

    .line 833
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .line 823
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 828
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNext()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 818
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 843
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 873
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 853
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 883
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWriteTime()J
    .locals 1

    .line 863
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 838
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 848
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 878
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 858
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 888
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 813
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    .local p1, "valueReference":Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 868
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
