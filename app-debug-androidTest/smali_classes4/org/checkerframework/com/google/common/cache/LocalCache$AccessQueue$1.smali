.class Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
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

.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue;

    .line 3760
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3770
    iput-object p0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3782
    iput-object p0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 3764
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
    const-wide v0, 0x7fffffffffffffffL

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

    .line 3774
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

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

    .line 3786
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 3768
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
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

    .line 3779
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3780
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

    .line 3791
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3792
    return-void
.end method
