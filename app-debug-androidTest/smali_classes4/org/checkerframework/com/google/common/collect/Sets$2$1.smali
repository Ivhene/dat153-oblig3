.class Lorg/checkerframework/com/google/common/collect/Sets$2$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets$2;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Sets$2;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Sets$2;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Sets$2;

    .line 831
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$2$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$2;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 832
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/Sets$2;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 836
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 838
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$2$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$2;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    return-object v0

    .line 841
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
