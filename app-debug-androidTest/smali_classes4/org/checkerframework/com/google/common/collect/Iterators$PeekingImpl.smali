.class Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/PeekingIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hasPeeked:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private peekedElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1118
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;, "Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 1120
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1124
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;, "Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1129
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;, "Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1132
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 1133
    .local v0, "result":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 1134
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 1135
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1146
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;, "Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 1150
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1140
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;, "Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1141
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1142
    return-void
.end method
