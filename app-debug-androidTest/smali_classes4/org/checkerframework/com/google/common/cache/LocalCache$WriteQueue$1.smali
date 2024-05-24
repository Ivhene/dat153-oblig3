.class Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;
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

.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;

    .line 3621
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3631
    iput-object p0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3643
    iput-object p0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

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

    .line 3635
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

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

    .line 3647
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 3625
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    const-wide v0, 0x7fffffffffffffffL

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

    .line 3640
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3641
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

    .line 3652
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3653
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 3629
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;"
    return-void
.end method
